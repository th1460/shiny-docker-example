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
docker run -p 80:80 shiny-example
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

# push app
ibmcloud cf push -b https://github.com/cloudfoundry/r-buildpack.git

# app status
ibmcloud cf apps

# logs
ibmcloud cf logs shiny-example --recent
```
