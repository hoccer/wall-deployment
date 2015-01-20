# Hoccer XO WebClient Backend Deployment

The deployment will fetch the latest build from [Jenkins](https://jenkins.hoccer.de/job/hoccer-talk-develop/). Note: If the latest Jenkins build was not successful, the deployment will fail.

## Prerequisites

*Note:* Developed and tested on OS X

* rvm must be installed

## Setup

Install all required gems via

```bash
$ bundle
```

Create secrets.yml file (get the secret from jenkins):

```bash
$ cp config/secrets.yml_template config/secrets.yml
```

## Deployment

### Preparation of a target machine

The target machine should be provisioned using the corresponding [puppet configuration](https://github.com/hoccer/wall-puppet-configuration).

The deployment to a stage configured in `config/deploy/<stagename>.rb` can be started as follows:

```bash
$ bundle exec cap <stagename> deploy
```
