# Create a native segwit address and get the public key from the address.
ADDRESS=$(bitcoin-cli -regtest getnewaddress "" "bech32")

# 2. Get the address info and extract the public key
bitcoin-cli -regtest getaddressinfo "$ADDRESS" | jq -r '.pubkey'