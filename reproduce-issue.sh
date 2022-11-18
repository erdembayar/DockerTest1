#!/bin/bash -ex

docker build . --tag dotnet-sdk-nuget-config-permission-issue-repro:latest

# Run container as non-root user
# Run into error but NuGet config is changed
docker run --rm --user $(id -u) -v /etc/passwd:/etc/passwd:ro -v /etc/group:/etc/group:ro -e HOME=/tmp dotnet-sdk-nuget-config-permission-issue-repro:latest bash -c "./container.sh || cat /nuget.config"