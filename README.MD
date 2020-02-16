## Docker build
### Sample build command line
docker build -t acolasz/myzookeeper:2.4.0 --build-arg scala_version=2.12 --build-arg kafka_version=2.4.0 .

### Use bash file with parameters
Default versions:
	scala_version=2.12
	kafka_version=2.4.0

./build.sh 
OR
./build.sh 2.12 2.4.0

## Result docker images
acolasz/myzookeeper:2.4.0