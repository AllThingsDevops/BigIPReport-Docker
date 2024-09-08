FROM mcr.microsoft.com/powershell:7.4-ubuntu-focal
RUN apt update && apt install brotli
ENTRYPOINT ["pwsh", "-c", "/bigipreport/bigipreport.ps1"]
