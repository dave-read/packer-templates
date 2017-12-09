#!/usr/bin/env bash

export RESOURCE_GROUP=dr-custom-images
export LOCATION=centralus

az group create -n $RESOURCE_GROUP -l $LOCATION

packer build -var-file azure.env centos-azure-vm.json