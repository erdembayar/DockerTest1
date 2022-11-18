# Works with SDK < 6.0.402
#FROM mcr.microsoft.com/dotnet/sdk:6.0.401

# No longer works with the following images:
#FROM mcr.microsoft.com/dotnet/sdk:6.0.402
FROM mcr.microsoft.com/dotnet/sdk:6.0.403
#FROM mcr.microsoft.com/dotnet/sdk:7.0.100

WORKDIR tmp
COPY container.sh /tmp

RUN chmod 777 /tmp/container.sh