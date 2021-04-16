# BigIPReport Docker Containers
Follow this [article](https://loadbalancing.se/2021/01/05/running-bigipreport-on-docker/) to learn how to use these containers.

## Data Collector
Used to generate the json data used to render the report. Requires volume mounts to get the code.

## Frontend
Pre-configured nginx to serve report

# data-collector-k8s
Container containing all you need to generate the report in Kubernetes. Article to come.
