FROM mcr.microsoft.com/powershell:7.1.0-ubuntu-focal
RUN apt update && apt install -y git
RUN mkdir -p /opt/underlay
WORKDIR /opt/bigipreport
RUN git checkout tag/$DOCKER_TAG -b master
ENTRYPOINT ["pwsh", "-c", "/opt/bigipreport/bigipreport.ps1", "/opt/bigipreport/config/bigipreportconfig.xml"]
