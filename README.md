# BigIPReport Docker Containers
Follow this [article](https://loadbalancing.se/2021/01/05/running-bigipreport-on-docker/) to learn how to use these containers.

## Data Collector
Used to generate the json data used to render the report. Requires volume mounts to get the code.

## Frontend
Pre-configured and optimized nginx to serve report (with brotli support and microcaching).

# data-collector-k8s
Container containing all you need to generate the report in Kubernetes. Check out this article to see a guide:

https://loadbalancing.se/2021/04/16/bigipreport-on-kubernetes/

## Important
Stable releases will be announced at [Devcentral](https://community.f5.com/t5/crowdsrc/bigip-report/ta-p/285134).
Do not use tags that's not announced there unless you're willing to be a beta tester.
