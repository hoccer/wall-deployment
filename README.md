# Hoccer Wall Deployment

This repo contains Capistrano deployment scripts for the following services:

* [Hoccer WebClient Backend](https://github.com/hoccer/hoccer-talk-spike)
* [EXIF Orientation Service](https://github.com/hoccer/exif-orientation-service)
* [Wall Image Viewer](https://github.com/hoccer/wall-image-viewer)
* [Wall Image Reviewer](https://github.com/hoccer/wall-image-reviewer)

Except for the EXIF Orientation Service, the latest builds from [Jenkins](https://jenkins.hoccer.de/job/hoccer-talk-develop/) will be deployed. Note: If the latest Jenkins build was not successful, the deployment will fail.

## Prerequisites

Developed and tested on OS X, rvm should be installed.

## Setup

Install all required gems via

```bash
$ bundle
```

Create secrets.yml file (get the secret from Jenkins):

```bash
$ cp secrets.yml_template secrets.yml
```

## Deployment

### Preparation of a target machine

The target machine should be provisioned using the corresponding [puppet configuration](https://github.com/hoccer/wall-puppet-configuration).

The deployment of a service to a stage configured in `config/deploy/<stagename>.rb` can be started as follows:

```bash
$ cd services/<service>
$ bundle exec cap <stagename> deploy
```
