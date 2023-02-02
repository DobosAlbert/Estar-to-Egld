#![no_std]

elrond_wasm::imports!();

const EGLD_DECIMALS_VALUE: u64 = 1_000_000_000_000_000_000;
const ZERO: u64 = 0;

#[elrond_wasm::contract]
pub trait EstarSaleContract {
    #[init]
    fn init(
        &self,
        token_identifier: TokenIdentifier,
        initial_price: BigUint,
    ) {
        require!(token_identifier.is_valid_esdt_identifier(), "Invalid token identifier!");
        require!(initial_price > 0, "Initial price must be positive value");

        self.token_id().set(&token_identifier);
        self.price().set(initial_price);
    }

    #[endpoint(fundContract)]
    #[payable("*")]
    fn fund_contract(
        &self,
        #[payment_token] token_identifier: EgldOrEsdtTokenIdentifier,
        #[payment] _payment: BigUint,
    ) {
        require!(!self.token_id().is_empty(), "Token id not set");
        let my_token_id = self.token_id().get();
        require!(my_token_id == token_identifier, "Invalid fund token")
    }

    #[payable("EGLD")]
    #[endpoint]
    fn buy(&self) {
        let egld_or_esdt_token_identifier = self.call_value().egld_or_single_esdt();
        let payment_token = egld_or_esdt_token_identifier.token_identifier;
        let payment_amount = egld_or_esdt_token_identifier.amount;

        require!(payment_token.is_egld(), "Only EGLD.");
        let balance = self.get_token_balance();
        require!(balance > ZERO, "No more tokens to sale.");
        let current_price = self.price().get();
        let one_egld = BigUint::from(EGLD_DECIMALS_VALUE);
        let result_esdt_token_amount = (&current_price * &payment_amount) / one_egld;

        // Maybe balance >= result_esdt_token_amount to cover all available ESDT amount
        require!(
            balance >= result_esdt_token_amount,
            "Not enough tokens for sale."
        );

        //sent token to caller
        let caller = self.blockchain().get_caller();
        let token_id_val = self.token_id().get();

        let client_current_balance = self.client_bought_value(&caller).get();
        let client_total_balance = &result_esdt_token_amount + &client_current_balance;
        sc_print!("current_value={}",client_current_balance);
        self.client_bought_value(&caller).set(client_total_balance);
        sc_print!("Hello there client {}", result_esdt_token_amount.clone());

        self.append_client_if_needed();
        self.send()
            .direct_esdt(&caller, &token_id_val, 0, &result_esdt_token_amount);
    }

    #[only_owner]
    #[endpoint]
    fn collect(&self) {
        let owner = self.blockchain().get_owner_address();

        let sc_address: ManagedAddress = self.blockchain().get_sc_address();
        let egld_balance = self.blockchain().get_balance(&sc_address);

        let my_token_id = self.token_id().get();
        let egld_or_esdt_token_identifier = EgldOrEsdtTokenIdentifier::esdt(my_token_id.clone());
        let token_balance = self.blockchain().get_sc_balance(&egld_or_esdt_token_identifier, 0);

        let big_zero: BigUint = BigUint::zero();
        if big_zero < token_balance {
            self.send()
                .direct_esdt(&owner, &my_token_id, 0, &token_balance);
        }

        if big_zero < egld_balance {
            self.send().direct_egld(&owner, &egld_balance)
        }
    }

    fn append_client_if_needed(&self) {
        let mut clients_set = self.client_list();
        let client = self.blockchain().get_caller();
        if !clients_set.contains(&client) {
            clients_set.insert(client);
        }
    }

    #[view(getTokenBalance)]
    fn get_token_balance(&self) -> BigUint {
        let my_token_id = self.token_id().get();

        let egld_or_esdt_token_identifier = EgldOrEsdtTokenIdentifier::esdt(my_token_id);
        let balance: BigUint = self.blockchain().get_sc_balance(&egld_or_esdt_token_identifier, 0);
        return balance;
    }

    #[view(getTokenId)]
    #[storage_mapper("tokenId")]
    fn token_id(&self) -> SingleValueMapper<TokenIdentifier>;

    #[view(getPrice)]
    #[storage_mapper("price")]
    fn price(&self) -> SingleValueMapper<BigUint>;

    #[view(getClientList)]
    #[storage_mapper("clientList")]
    fn client_list(&self) -> UnorderedSetMapper<ManagedAddress>;

    #[view(getClientBoughtValue)]
    #[storage_mapper("clientBoughtValue")]
    fn client_bought_value(
        &self,
        client_address: &ManagedAddress,
    ) -> SingleValueMapper<BigUint>;
}
