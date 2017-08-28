# ffs_HLFv1.0
Fabric From Scratch (FFS).

Following scripts will compile, prepare required docker images and setup example fabric network. The Fabric consists of:
- three zookeeper containers
- four kafka containers
- three organisations (org1, org2, org3) each org have:
	* two orderers (6 in total)
	* two peers (also 6 in total) 

# Prepare your linux box
If you are running Ubuntu do following steps
```
sudo apt-get install software-properties-common
sudo apt-get install curl
curl -O https://hyperledger.github.io/composer/prereqs-ubuntu.sh
chmod u+x prereqs-ubuntu.sh
sudo ./prereqs-ubuntu.sh
```

# Steps required to setup and run fabric from scratch
follow steps described below:
```
git clone https://github.com/kleniu/ffs_HLFv1.0.git
cd ffs_HLFv1.0/
```

## compiling
```
cd 000-makebins/
./s01.getsource   # pulling sources  
./s02.compile     # compiling bins (peer, orderer, cryptogen etc)
./s03.mkdockerimg # make docker images
cd ..
```

## generating crypto artifacts 
```
cd 001-generateArtifacts/
./s01.gencryptoconfig # generate crypto-config.yaml
./s02.mkcrypto        # making crypto artifacts
./s03.gentxconf       # generate configtx.yaml
./s04.mkgenesis       # making genesis block
./s05.chconftx        # channel configuration transaction
./s06.anchorupdtx     # channel update for anchor peers
cd ..
``` 

## starting docker containers
```
cd 002-containers/
./s01.createcontainers # run docker-compose 
cd ..
``` 

## creating sample channel
```
cd 003-createchannel/
./s01.checkOSN        # sanity check of Ordering Service Network
./s02.createchannel   # creating channel
./s03.checkchannel    # sanity check of created channel
./s04.joinchannel     # joining peers 
./s05.anchorupdatech  # update channel config with anchor peers
cd ..
```

## installing and testing example04 chaincode
```
cd 004-chaincode/
./s01.installcc       # installing example chaincode (example04)
./s02.instantiatecc   # instantiate chain code on single peer
./s03.querycc         # query chaincode on all other peers
./s04.invokecc        # invoke sample transaction on single peer
./s05.checkquerycc    # query chaincode on all other peers
```

done :)
