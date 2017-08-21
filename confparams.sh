## configuration variables

# name of the channel to be created
FFS_CHANNEL_NAME=testchannel


## You should play with these parameters only if you know what you are doing.
# timeout used by chaincode query 
FFS_TIMEOUT=300
# fabric source dir
FFS_FABRIC_SOURCE=./000-makebins/source
# location of the project
FSS_FABRIC_ROOT=${FFS_FABRIC_SOURCE}/fabric
# location of the GIT repo. It's used for fetching source code
FSS_FABRIC_GIT="https://gerrit.hyperledger.org/r/fabric"

## Do NOT change following variables
FSS_OS_ARCH=$(echo "$(uname -s)-amd64" | awk '{print tolower($0)}')

FSS_RED='\033[0;31m'
FSS_BLU='\033[0;34m'
FSS_GRE='\033[0;32m'
FSS_YEL='\033[0;33m'
FSS_NOC='\033[0m'
