#!/usr/bin/env bash
rm package.box
vagrant up --no-provision
vagrant provision
vagrant status
vagrant package
vagrant box add -f kjunine/base package.box
