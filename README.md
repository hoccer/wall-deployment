# Hoccer Receiver Deployment

## Prerequisites

*Note:* Developed and tested on OS X

* rvm must be installed

## Setup

Install all required gems via

```bash
$ bundle
```

## Deployment

### Preparation of a target machine

The target machine should be provisioned using the corresponding [puppet configuration](https://github.com/hoccer/hoccer-receiver-puppet-configuration).

The deployment to a stage configured in `config/deploy/<stagename>.rb` can be started as follows:

```bash
$ bundle exec cap <stagename> deploy
```

The deployment will fetch the latest build from [Jenkins](https://jenkins.hoccer.de/job/hoccer-receiver/). Note: If the latest Jenkins build was not successful, the deployment will fail.
