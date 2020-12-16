# AmazonLinux v2 w/ AWS CLI v2
FROM amazon/aws-cli

# install basic tools
RUN yum upgrade -y && \
    yum install -y shadow-utils patch make gcc gcc-c++

# install node.js 12.x and yarn
RUN curl --silent --location https://rpm.nodesource.com/setup_12.x | bash \
 && yum upgrade -y \
 && yum install -y nodejs
