FROM mcr.microsoft.com/powershell:7.2.1-ubuntu-focal
RUN apt update && apt install brotli
ENTRYPOINT ["pwsh", "-c", "/bigipreport/bigipreport.ps1"]
