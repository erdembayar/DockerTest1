#!/bin/bash -ex

# We are not running as root
whoami
# Files belongs to root:root and chmodded 777
ls -l /nuget.config
# No NuGet source exists
cat /nuget.config
# Now error happens
dotnet nuget add source https://mytestsource -n TestSourceName --configfile /nuget.config
