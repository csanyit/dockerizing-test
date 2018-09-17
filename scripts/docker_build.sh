export DATE=`date '+%Y%m%d%H%M%S'`
export IMAGE_TAG="xray;${DATE}"
docker build -t $IMAGE_TAG .