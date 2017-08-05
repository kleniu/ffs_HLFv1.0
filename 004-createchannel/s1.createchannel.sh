#!/bin/bash
# Create the channel
docker exec peer0.org1.foo.com peer channel create -o orderer.foo.com:7050 -c composerchannel -f /etc/hyperledger/configtx/composer-channel.tx

# Join peer0.org1.foo.com to the channel.
docker exec -e "CORE_PEER_MSPCONFIGPATH=/etc/hyperledger/msp/users/Admin@org1.foo.com/msp" peer0.org1.foo.com peer channel join -b composerchannel.block

