#!/bin/bash
# Script to run harden script against target machines in "inv" file.
# Assume you have set-up your ssh keys.

ansible-playbook -vi inv  --ask-become-pass -e  deployment_vars=CIS7_1exceptions.yml RHEL7-CIS_Benchmark_level1.yml
