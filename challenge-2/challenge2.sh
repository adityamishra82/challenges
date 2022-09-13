#!/usr/bin/sh

if [ $# -eq 0 ];
then
        metadataValue=$(curl -s http://169.254.169.254/latest/dynamic/instance-identity/document)
        echo $metadataValue
else
    for key in "$@";  do
        value=$(curl -s http://169.254.169.254/latest/dynamic/instance-identity/document | jq -r .$key)
        echo $value

    done
fi
