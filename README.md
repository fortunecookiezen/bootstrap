# bootstrap

#### Table of Contents

1. [Description](#description)
1. [Setup - The basics of getting started with bootstrap](#setup)
    * [What bootstrap affects](#what-bootstrap-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with bootstrap](#beginning-with-bootstrap)
1. [Usage - Configuration options and additional functionality](#usage)
1. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
1. [Limitations - OS compatibility, etc.](#limitations)
1. [Development - Guide for contributing to the module](#development)

## Description

This module is meant to be used by `puppet apply` to bootstrap a puppet client to
speak to a puppet master. I developed this to use for a vsphere cloud -> puppet
provisioning workflow.

## Setup

This module requires you to set the address of the puppetmaster and the
environment variables in `manifests/init.pp`.

### What bootstrap affects 

This module modifies the `puppet.conf` file attributes for server and environment.

### Setup Requirements 

none

### Beginning with bootstrap

This module requires `puppetlabs-stdlib` to be in the modulepath.

## Usage

execute during provisioning with:

`puppet apply -modulepath=$PWD -e "include bootstrap"`

After that, use your regular puppet workflow to finish configuration of the server.

## Reference

Here, include a complete list of your module's classes, types, providers,
facts, along with the parameters for each. Users refer to this section (thus
the name "Reference") to find specific details; most users don't read it per
se.

## Limitations

This module has been tested on Centos 6/RHEL 6.

## Development

This project lives at https://github.com/fortunecookiezen/bootstrap

## Release Notes/Contributors/Etc. 

Initial Release

