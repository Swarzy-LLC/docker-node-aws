# AmazonLinux v2 w/ AWS CLI v2
FROM amazonlinux:2

RUN echo "Running swarzyllc/node-aws up in here."

# add Node.js and Yarn repo information
RUN curl --silent --location https://rpm.nodesource.com/setup_12.x | bash
RUN curl -sL https://dl.yarnpkg.com/rpm/yarn.repo | tee /etc/yum.repos.d/yarn.repo

# install build tools, unzip, node.js, and yarn
RUN yum upgrade -y && \
    yum install -y shadow-utils patch make gcc gcc-c++ unzip nodejs yarn

# Download and install AWS CLI v2
# directions from here: https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2-linux.html
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip
RUN ./aws/install
