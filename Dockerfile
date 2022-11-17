# Works with SDK < 6.0.402
#FROM mcr.microsoft.com/dotnet/sdk:6.0.401

# No longer works with the following images:
#FROM mcr.microsoft.com/dotnet/sdk:6.0.402
FROM mcr.microsoft.com/dotnet/sdk:6.0.403
#FROM mcr.microsoft.com/dotnet/sdk:7.0.100

COPY container.sh .

RUN echo '<?xml version="1.0" encoding="utf-8"?><configuration></configuration>' >  nuget.config && \
    chmod 777 /nuget.config