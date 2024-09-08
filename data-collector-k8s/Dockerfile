FROM alpine:3 as base-image
ARG GIT_REF
RUN apk add git
WORKDIR /tmp/bigipreport
RUN git clone https://github.com/net-utilities/BigIPReport .
RUN git checkout $GIT_REF

FROM mcr.microsoft.com/powershell:7.4-alpine-3.16
RUN mkdir -p /opt/underlay
WORKDIR /opt/bigipreport
COPY --from=base-image /tmp/bigipreport/underlay /opt/bigipreport/underlay
COPY --from=base-image /tmp/bigipreport/bigipreport.ps1 /opt/bigipreport/bigipreport.ps1
COPY --from=base-image /tmp/bigipreport/modules /opt/bigipreport/modules
ENTRYPOINT ["pwsh", "-c", "/opt/bigipreport/bigipreport.ps1", "/opt/bigipreport/config/bigipreportconfig.xml"]
