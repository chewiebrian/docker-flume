## docker-flume
Docker container to easily launch an Apache Flume agent. Uses [http://phusion.github.io/baseimage-docker/](http://phusion.github.io/baseimage-docker/) and a RUnit service to ensure running as a daemon.

## Building container

    docker build -t docker-flume . 

## Setup and environment variables

The Dockerfile downloads a Flume 1.6.0 distribution to */opt/flume* folder. 
Both Flume version and download URL can be overriden with the `FLUME_VERSION` and `FLUME_DOWNLOAD_URL` environment variables.

The default config folder is */opt/flume/conf*. Available environment variables to setup Flume are:
 
- `FLUME_AGENT`: Flume agent name (default *agent*).
- `FLUME_CONF`: Flume config folder relative to */opt/flume* (default *conf*).
- `FLUME_CONF_FILE`: Flume config file relative to */opt/flume* (default *conf/flume-conf.properties.template*).
- `FLUME_OPTS`: Additional flags to pass to flume-ng script (default *-Dflume.root.logger=INFO,console*).

## Starting container

    docker run -v /my/local/conf:/opt/flume/conf -e FLUME_CONF_FILE=my_conf.properties docker-flume