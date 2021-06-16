#!/bin/sh

basketName='chia-basket-001'

#install google storage - gcsfuse
#https://github.com/GoogleCloudPlatform/gcsfuse/blob/master/docs/installing.md

export GCSFUSE_REPO=gcsfuse-`lsb_release -c -s`
echo "deb http://packages.cloud.google.com/apt $GCSFUSE_REPO main" | sudo tee /etc/apt/sources.list.d/gcsfuse.list
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -

sudo apt-get update
sudo apt-get install gcsfuse


export GOOGLE_APPLICATION_CREDENTIALS="$(pwd)/gstorage-key.json"
#mount
mkdir "$(pwd)/../../storage"
gcsfuse $basketName $(pwd)/../../storage


#[gsutils]
#https://cloud.google.com/storage/docs/gsutil_install#deb

echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
sudo apt-get update && sudo apt-get install -y apt-transport-https ca-certificates gnupg

curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -
sudo apt-get update && sudo apt-get install -y google-cloud-sdk

gcloud auth activate-service-account --key-file=$(pwd)/gstorage-key.json