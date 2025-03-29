docker build -t $JOB_NAME:$BUILD_ID .

docker tag $JOB_NAME:$BUILD_ID akash2061/$JOB_NAME:$BUILD_ID

docker tag $JOB_NAME:$BUILD_ID akash2061/$JOB_NAME:latest

docker push akash2061/$JOB_NAME:$BUILD_ID

docker push akash2061/$JOB_NAME:latest

docker rmi -f $JOB_NAME:$BUILD_ID akash2061/$JOB_NAME:$BUILD_ID akash2061/$JOB_NAME:latest
