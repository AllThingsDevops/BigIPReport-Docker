FROM mcr.microsoft.com/powershell:7.1.0-ubuntu-focal
RUN apt update && apt install brotli git
WORKDIR /opt/bigipreport
RUN git clone https://github.com/net-utilities/BigIPReport /opt/bigipreport
ENTRYPOINT ["pwsh", "-c", "/bigipreport/bigipreport.ps1 /bigipreport/config/bigipreportconfig.xml"]
