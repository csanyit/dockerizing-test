echo 'Building XRAY classifier Docker image'
docker build -t $XRAY_CLASSIFIER_IMAGE_NAME:$IMAGE_TAG .

echo 'Building MRI classifier Docker image'
docker build -t $MRI_CLASSIFIER_IMAGE_NAME:$IMAGE_TAG -f Dockerfile.MRI .

echo 'Building object detection Docker image'
docker build -t $OBJECT_DETECTION_IMAGE_NAME:$IMAGE_TAG .