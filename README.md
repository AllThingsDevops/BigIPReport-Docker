# BigIPReport Docker Containers
Follow this [article](https://loadbalancing.se/2021/01/05/running-bigipreport-on-docker/) to learn how to use these containers.

## Data Collector
Used to generate the json data used to render the report. Requires volume mounts to get the code.

## Frontend
Pre-configured nginx to serve report

# data-collector-k8s
Container containing all you need to generate the report in Kubernetes. Article to come.

## Important
Stable releases will be announced at [Devcentral](https://devcentral.f5.com/s/articles/bigip-report?page=1).
Do not use tags that's not announced there unless you're willing to be a beta tester.
