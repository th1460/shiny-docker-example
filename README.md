# A Shiny example

## Docker

Required:

- `Dockerfile`
- `shiny-server.conf`
- `shiny-server.sh`

```
# build
docker build -t shiny-example .

# run
docker run -p 80:8080 shiny-example
```

### Docker push in dockerhub

```
# connect dockerhub 
docker login

# image tag
docker tag shiny-example th1460/shiny-example

# push image
docker push th1460/shiny-example
```

## Cloud Foundry (IBM Cloud)

Required:

- `Procfile`
- `r.yml`
- `manifest.yml`

```
# connect ibm cloud
ibmcloud login

# connect in cloud foundry
ibmcloud target --cf

# deploy app
ibmcloud cf push -b https://github.com/cloudfoundry/r-buildpack.git

# app status
ibmcloud cf apps

# logs
ibmcloud cf logs shiny-example --recent
```

### Use Github Actions

Here a configuration to use Github Action to CI/CD:

https://github.com/marketplace/actions/deploy-to-ibm-cloud-foundry

### Deploying an App with Docker in Cloud Foundry

```
# deploy app
ibmcloud cf push shiny-example --docker-image th1460/shiny-example -k 2G
```

The docker image is larger than the default disk limit. You should increase the disk limit when it is push the docker image by specifying the parameter `-k`.

In the `manifest.yml` this parameter can be specified by `disk_quota: 2G`.



