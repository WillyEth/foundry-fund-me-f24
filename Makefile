-include .env

.PHONY: build format wallets deploy-sepolia

build:; forge build
format:; forge fmt
wallets:; cast wallet list

deploy-sepolia:
	 forge script script/DeployFundMe.s.sol:DeployFundMe --rpc-url ${SEPOLIA_RPC_URL} --account senderE7D  --password-file .password --sender ${SENDER_DEFAULT} --broadcast --verify --etherscan-api-key ${ETHERSCAN_API_KEY} -vvvvv
	 
 



