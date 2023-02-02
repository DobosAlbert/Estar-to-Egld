PROJECT="${PWD}"

MY_DECIMALS="000000000000000000"
ESTAR_DECIMAL="000000000000000000"

INITIAL_PRICE="13500${MY_DECIMALS}"

# 1.4mil

TOKEN_ID="ESTAR-461bab"
TOKEN_ID_HEX=$(echo -n ${TOKEN_ID} | xxd -p)

PEM_FILE="/home/edi/Desktop/wallet-estar/wallet-owner.pem"
PROXY=https://gateway.elrond.com
CHAINID=1
ADDRESS=erd1qqqqqqqqqqqqqpgqh54p3kktqgnu5ljdp756cefm6hps7c87wmfsmkzs7d


deploy() {
  erdpy --verbose contract deploy --project=${PROJECT} --recall-nonce --pem=${PEM_FILE} \
    --gas-limit=30000000 --send --outfile="${PROJECT}/interactions/logs/deploy.json" \
    --proxy=${PROXY} --chain=${CHAINID} \
    --arguments "0x${TOKEN_ID_HEX}" ${INITIAL_PRICE} || return
}

updateContract() {
  erdpy --verbose contract upgrade ${ADDRESS} --project=${PROJECT} --recall-nonce --pem=${PEM_FILE} \
    --gas-limit=30000000 --send --outfile="${PROJECT}/interactions/logs/deploy.json" \
    --proxy=${PROXY} --chain=${CHAINID} \
    --arguments "0x${TOKEN_ID_HEX}" ${INITIAL_PRICE}
}

fundContract() {
  method_name="0x$(echo -n 'fundContract' | xxd -p -u | tr -d '\n')"
  token_id="0x$(echo -n ${TOKEN_ID} | xxd -p -u | tr -d '\n')"
  amount="1400000${ESTAR_DECIMAL}"
  erdpy --verbose contract call ${ADDRESS} --recall-nonce \
    --pem=${PEM_FILE} \
    --gas-limit=3000000 \
    --proxy=${PROXY} --chain=${CHAINID} \
    --function="ESDTTransfer" \
    --arguments $token_id $amount $method_name \
    --send \
    --outfile="${PROJECT}/interactions/logs/fund.json"
}

buyTokens() {
  erdpy --verbose contract call ${ADDRESS} --recall-nonce \
    --pem=${PEM_FILE} \
    --gas-limit=4000000 \
    --function="buy" \
    --value="1${MY_DECIMALS}" \
    --proxy=${PROXY} --chain=${CHAINID} \
    --send \
    --outfile="${PROJECT}/interactions/logs/buy.json"
}

collect() {
  erdpy --verbose contract call ${ADDRESS} --recall-nonce \
    --pem=${PEM_FILE} \
    --gas-limit=5000000 \
    --proxy=${PROXY} --chain=${CHAINID} \
    --function="collect" \
    --send \
    --outfile="${PROJECT}/interactions/logs/collect.json"
}

getTokenBalance() {
  erdpy --verbose contract query ${ADDRESS} --function="getTokenBalance" \
    --proxy=${PROXY}
}

getClientBoughtValue() {
  erdpy --verbose contract query ${ADDRESS} --function="getClientBoughtValue" --arguments erd137lawjzfc8sza6z08xyt4wzw3pzulwl4z5h9s5fr6tr7lexmyx3qa8hecg \
    --proxy=${PROXY}
}

getPrice() {
  erdpy --verbose contract query ${ADDRESS} --function="getPrice" \
    --proxy=${PROXY}
}