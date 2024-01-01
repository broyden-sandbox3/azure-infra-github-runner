FROM ubuntu:22.04

RUN apt-get update && \
apt-get install -y unzip && \
apt-get install -y tar && \
apt-get install -y gzip && \
apt-get install -y curl && \
apt-get install -y less && \
apt-get install -y wget && \
apt-get install -y groff 

RUN set -uex; \
    apt-get update; \
    apt-get install -y ca-certificates curl gnupg; \
    mkdir -p /etc/apt/keyrings; \
    curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key \
     | gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg; \
    NODE_MAJOR=18; \
    echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_MAJOR.x nodistro main" \
     > /etc/apt/sources.list.d/nodesource.list; \
    apt-get -qy update; \
    apt-get -qy install nodejs;


RUN npm install -g npm@latest && \
apt-get update && apt-get install -y gnupg software-properties-common && \
wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | tee /usr/share/keyrings/hashicorp-archive-keyring.gpg && \
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | tee /etc/apt/sources.list.d/hashicorp.list && \
apt update && \
curl -sL https://aka.ms/InstallAzureCLIDeb | bash && \
# apt-get -y install terraform="1.4.3-1" && \
# curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
# unzip awscliv2.zip && \
# ./aws/install && \
# curl -O https://s3.us-west-2.amazonaws.com/amazon-eks/1.25.6/2023-01-30/bin/linux/amd64/kubectl && \
# chmod +x ./kubectl && \
# mv ./kubectl /usr/bin/kubectl && \
# curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp && \
# mv /tmp/eksctl /usr/local/bin && \
wget -O helm.tar.gz https://get.helm.sh/helm-v3.12.0-linux-amd64.tar.gz && \
tar -zxvf helm.tar.gz && \
mv linux-amd64/helm /usr/local/bin/helm  && \
npm install -g typescript && \
npm install -g ts-node && \
# # https://docs.aws.amazon.com/systems-manager/latest/userguide/session-manager-working-with-install-plugin.html#install-plugin-debian
# curl "https://s3.amazonaws.com/session-manager-downloads/plugin/latest/ubuntu_64bit/session-manager-plugin.deb" -o "session-manager-plugin.deb" && \
# dpkg -i session-manager-plugin.deb && \
curl -fsSL https://apt.releases.hashicorp.com/gpg | apt-key add - && \
apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main" && \
apt-get update && apt-get install packer

# # # # Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh
# COPY tf/ /tf

ENTRYPOINT ["/entrypoint.sh"]