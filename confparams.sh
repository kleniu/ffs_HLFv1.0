### configuration variables
# project root directory - you MUST change it
FFS_ROOT=~/ffs_HLFv1.0

############################ DO NOT UPDATE ANYTHING BELOW ############################
### You should play with these parameters only if you know what you are doing.
## variables used for crypto material generation
# number of organisations
FFS_ORGS=3
# number of nodes (orderers or peers) in the organisation
FFS_ORG_NODES=2
# domain name for all nodes (orderers and peers)
FFS_DOMAIN=foo.com

# name of the channel to be created
FFS_CHANNEL_NAME=testchannel

# timeout used by chaincode query 
FFS_TIMEOUT=30
# GOPATH
export GOPATH=${FFS_ROOT}/000-makebins/GOPATH
# fabric bin dir
FFS_FABRIC_BIN=${FFS_ROOT}/000-makebins/bin
# fabric source dir
FFS_FABRIC_SOURCE=$GOPATH/src/github.com/hyperledger
# location of the project
FFS_FABRIC_ROOT=${FFS_FABRIC_SOURCE}/fabric
# location of the GIT repo. It's used for fetching source code
FFS_FABRIC_GIT="https://gerrit.hyperledger.org/r/fabric"

### Do NOT change following variables
FFS_OS_ARCH=$(echo "$(uname -s)-amd64" | awk '{print tolower($0)}')
FFS_RED='\033[0;31m'
FFS_BLU='\033[0;34m'
FFS_GRE='\033[0;32m'
FFS_YEL='\033[0;33m'
FFS_NOC='\033[0m'
