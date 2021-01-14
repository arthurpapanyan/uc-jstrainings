readonly VERSION=$(date +%Y%m%d%H%M)
BRANCHNAME=$(echo $GIT_BRANCH | cut -d / -f 2,3 | tr [/]  - | tr '[:upper:]' '[:lower:]')
BRANCHNAME2=$(echo $BRANCH_NAME | cut -d / -f 2,3 | tr [/]  - | tr '[:upper:]' '[:lower:]')
echo $ECSDSDS || "sdsds"
echo $BRANCHNAME2
echo "docker build $FRONTEND_PATH/build/accounts -t eu.gcr.io/cultivated-era-99609/jenkins-accounts:$BRANCHNAME.$VERSION"
echo "docker push eu.gcr.io/cultivated-era-99609/jenkins-builder:$BRANCHNAME.$VERSION"