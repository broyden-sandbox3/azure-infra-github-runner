#!/bin/sh -l

echo "HELLO BROYDEN AZURE"

# export TF_TOKEN_app_terraform_io=$1
# export AWS_ACCESS_KEY_ID=$2
# export AWS_SECRET_ACCESS_KEY=$3
# export AWS_REGION=$4
# VPC_NAME=$5
# VPC_ROUTE_TABLE_NAME=$6
# INSTANCE_NAME=$7
# AMI_NAME=$8
# PROJECT=$9

# cd /tf

# terraform init
# terraform apply -auto-approve \
#                 -input=false  \
#                 -var "access_key=$AWS_ACCESS_KEY_ID" \
#                 -var "secret_key=$AWS_SECRET_ACCESS_KEY" \
#                 -var "ami_name=$AMI_NAME" \
#                 -var "instance_name=$INSTANCE_NAME" \
#                 -var "vpc_name=$VPC_NAME" \
#                 -var "project=$PROJECT"




# export AWS_REGION=$5
# export GITHUB_ACCESS_TOKEN=$6
# export COINT_API_ASSET_NODE_ECR_REPO_NAME=$7
# export GITHUB_SELF_HOSTED_RUNNER_AMI_NAME=$8
# export GITHUB_PERSONAL_ACCESS_TOKEN=$9
# export GITHUB_REPOSITORY_URL=${10} # https://bash.cyberciti.biz/guide/$1
# export GITHUB_SELF_HOSTED_RUNNER_NAME=${11}
# EKS_CLUSTER_NAME_UI=${12}
# EKS_CLUSTER_NAME_ASSETS_API=${13}

# echo $EKS_CLUSTER_NAME_UI

# STARTING_DIR=$PWD
# echo "GITHUB RUNNER SET UP111"
# cd /broyden
# npm install
# cd ./src
# echo "GITHUB RUNNER SET UP222"
# ./run_process.sh $VPC_NAME \
#     $VPC_ROUTE_TABLE_NAME \
#     $GITHUB_ACCESS_TOKEN
# # ./run_process.sh $PWD \
# #                     $GITHUB_ACCESS_TOKEN \
# #                     $GITHUB_PERSONAL_ACCESS_TOKEN \
# #                     $GITHUB_REPOSITORY_URL \
# #                     $TF_TOKEN_app_terraform_io \
# #                     $AWS_ACCOUNT_ID \
# #                     $AWS_ACCESS_KEY_ID \
# #                     $AWS_SECRET_ACCESS_KEY \
# #                     $AWS_REGION \
# #                     $COINT_API_ASSET_NODE_ECR_REPO_NAME \
# #                     $GITHUB_SELF_HOSTED_RUNNER_NAME \
# #                     $EKS_CLUSTER_NAME_UI \
# #                     $EKS_CLUSTER_NAME_ASSETS_API

# # time=$(date)
# # cd $STARTING_DIR
# # cd /octokit
# # npm install
# # cd ./src
# # ./run_create_infra.sh $GITHUB_ACCESS_TOKEN
# # echo "time=$time" >> $GITHUB_OUTPUT
