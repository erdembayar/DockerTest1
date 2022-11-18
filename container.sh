#!/bin/bash -ex

# We are not running as root
whoami
# Files belongs to root:root and chmodded 777
# No NuGet source exists
ls

echo '<?xml version="1.0" encoding="utf-8"?><configuration></configuration>' >  nuget.config
# dotnet new nugetconfig
ls
pwd

dotnet nuget add source https://mytestsource -n TestSourceName --configfile ./nuget.config

ls -l nuget.config
cat nuget.config