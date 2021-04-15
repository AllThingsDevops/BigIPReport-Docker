FROM mcr.microsoft.com/powershell:7.1.0-ubuntu-focal
RUN apt update && apt install -y git
RUN mkdir -p /opt/underlay
WORKDIR /opt/bigipreport
RUN git clone https://github.com/net-utilities/BigIPReport /opt/bigipreport
RUN git checkout $DOCKER_TAG
RUN chmod 666 /opt/bigipreport/bigipreportconfig.xml
COPY entrypoint.ps1 .
ENTRYPOINT ["pwsh", "-c", "/opt/bigipreport/entrypoint.ps1"]
