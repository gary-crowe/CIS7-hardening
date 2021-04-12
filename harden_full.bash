#!/bin/bash
# Script to run harden script against target machines in "inv" file.
# Assume you have set-up your ssh keys.

# NB	This uses the galaxy role: dsglaser.cis_security
# It will harden: 
#     RHEL 8 / Fedora 31 / CentOS 8 / Oracle 8 
#     RHEL 7 / Centos 7  / Oracle 7 
#     SLES 15 /  Ubuntu 18.04 

ansible-playbook -vi inv Any-Full.yml
