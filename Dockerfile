FROM node:12-alpine
RUN apk add --no-cache curl
RUN apk add --no-cache unzip
RUN curl "https://d1vvhvl2y92vvt.cloudfront.net/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip
RUN ./aws/install
RUN aws2 --version
