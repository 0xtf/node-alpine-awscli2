FROM node:12-alpine
RUN apk add --no-cache curl
RUN apk add --no-cache unzip
RUN apk add --no-cache bash
RUN curl "https://d1vvhvl2y92vvt.cloudfront.net/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip
CMD ["sh", "./aws/install"]
CMD ["sh", "aws2 --version"]
