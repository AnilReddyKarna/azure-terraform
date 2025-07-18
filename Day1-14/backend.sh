#!/bin/bash
RESOURCE_GROUP_NAME=tfstatelearning
STORAGE_ACCOUNT_NAME=tfstate23370
STORAGE_ACCOUNT_NAME=tfstate$RANDOM
LOCATION=eastus
CONTAINER_NAME=tfstate

# Create a resource group
az group create --name $RESOURCE_GROUP_NAME --location $LOCATION

#create a storage account
az storage account create --name $STORAGE_ACCOUNT_NAME \
    --resource-group $RESOURCE_GROUP_NAME --location $LOCATION  --sku Standard_LRS

# Create a blob container
az storage container create --name $CONTAINER_NAME \
    --account-name $STORAGE_ACCOUNT_NAME --public-access off