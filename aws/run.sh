NAMAUSER=userD
docker rm -f aws1-$userD
docker run -it --name aws1-$userD \
	-e USERNAME=$userD \
	-e KEYNAME=$key-0f1a7413f2c40a691 \
	-v $(pwd)/config/config:/tmp/config \
	-v $(pwd)/config/credentials:/tmp/credentials \
	-v $(pwd)/ec2:/data \
	-e AWS_CONFIG_FILE=/tmp/config \
	-e AWS_SHARED_CREDENTIALS_FILE=/tmp/credentials \
	royyana/cltool-alpine:1.00 /bin/sh
