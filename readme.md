# Install Forge

- $ foundryup

# Start Anvil

- $ anvil
- get address and pk's from anvil result

# Install latest submodules

- $ forge install

# Deploy contract

forge script AirdropERC1155 \
--rpc-url http://localhost:8545 \
--private-key 0x92db14e403b83dfe3df233f83dfa3a0d7096f21ca9b0d6d6b8d88b2b4ec1564e \
-vvvv \
--broadcast

# Run function

forge script AirdropERC1155 \
--sig "mintTokensForSelf()" \
 --rpc-url http://localhost:8545 \
 --private-key 0x92db14e403b83dfe3df233f83dfa3a0d7096f21ca9b0d6d6b8d88b2b4ec1564e \
 -vvvv \
 --broadcast
