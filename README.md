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

The very basic steps needed for a user to get the module up and running. This
can include setup steps, if necessary, or it can be an example of the most
basic use of the module.

## Usage

execute during provisioning with:

`puppet apply -modulepath=`pwd` -e "include bootstrap"`

After that, use your regular puppet workflow to finish configuration of the server.

## Reference

Here, include a complete list of your module's classes, types, providers,
facts, along with the parameters for each. Users refer to this section (thus
the name "Reference") to find specific details; most users don't read it per
se.

## Limitations

This is where you list OS compatibility, version compatibility, etc. If there
are Known Issues, you might want to include them under their own heading here.

## Development

Since your module is awesome, other users will want to play with it. Let them
know what the ground rules for contributing are.

## Release Notes/Contributors/Etc. 

Initial Release
