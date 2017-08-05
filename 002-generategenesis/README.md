1. create genesis block and channel configuration transaction
```
export FABRIC_CFG_PATH=$PWD
FABRIC_CFG_PATH=$PWD configtxgen -profile ComposerOrdererGenesis -outputBlock ./composer-genesis.block
FABRIC_CFG_PATH=$PWD configtxgen -profile ComposerChannel -outputCreateChannelTx ./composer-channel.tx -channelID composerchannel
```
