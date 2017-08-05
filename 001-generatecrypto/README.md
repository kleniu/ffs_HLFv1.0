0. generate crypto material
```
cryptogen generate --config=./crypto-config.yaml
```

1. copy self signed root CA cert from org1
it will be need to run CA
```
mkdir ./fabric-ca-config
cp -r ./crypto-config/peerOrganizations/org1.foo.com/ca/* fabric-ca-config/.
```

2. copy msp config for orderer
```
mkdir ./fabric-orderer-config
cp -r ./crypto-config/ordererOrganizations/foo.com/orderers/orderer.foo.com/msp ./fabric-orderer-config/.
```

3. copy msp config for peer and peer admin users
```
mkdir ./fabric-peer-config
cp -r ./crypto-config/peerOrganizations/org1.foo.com/peers/peer0.org1.foo.com/msp ./fabric-peer-config/.
cp -r ./crypto-config/peerOrganizations/org1.foo.com/users ./fabric-peer-config/.
```

