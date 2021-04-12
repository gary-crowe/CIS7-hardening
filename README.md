# RHEL7-CIS - v2.2.0.1 - Latest

## RHEL 7 - CIS Benchmark Hardening Scripts

This Ansible code is under development and is considered a work in progress.

The Ansible scripts here can be used to harden RHEL/Centos machines to be CIS compliant to meet level 1 or level 2 requirements.

This code will make significant changes to systems and could break the running operations of machines. Considering using this script on a test machine before using the script against other production level systems for remediation. Use this script at your own risk and no warranty is attached for the usage of this script as dictated by the license.

## Operation
Populate your inventory file (inv) with the machines you want to harden.  Then run the appropriate script:
```
harden_full.bash       # Hardens to full level 3 standard
harden_to_level1.bash  # Hardens to CIS 2, server 1 standard
harden_to_level2.bash  # Hardens to CIS 2, server 2 standard
```
If you want to override the security paramters, enter them in the files:
```
CIS7_1exceptions.yml
CIS7_2exceptions.yml
```
## System Requirements
```
Ansible 2.8+
RHEL 7.x+
```
## Role
```
role: RHEL7-CIS
```
## Role/Playbook Tags
```
tags: 
level1
level2
always
prelim_tasks
post_tasks
```
## Section Vars
```
section1
section2
section3
section4
section5
section6
```
## Vars
```
Refer to defaults/main.yml for other vars
```
## Sample Playbook.ymls
```
Refer to RHEL7-CIS_Benchmark_(level1 or level2).ymls for sample playbook.ymls.
```
## Ansible galaxy role: dsglaser.cis_security
This has been incorporated (mostly for testing).
It hardens your target system to latest CIS standards (3.0.0).  It will determine your OS and apply accordingly.

Warning: In all cases, use with caution as this code will change yuour target system and most likely break your applications.

## Testing
To test your local machine you can use Openscap reporting:
```
yum install yum install openscap-scanner scap-security-guide
RHEL8:
oscap xccdf eval --profile cis --fetch-remote-resources --results scan_results.xml --report scan_report.html /usr/share/xml/scap/ssg/content/ssg-rhel7-xccdf.xml
RHEL7:
oscap xccdf eval --profile C2S --fetch-remote-resources --results scan_results.xml --report scan_report.html /usr/share/xml/scap/ssg/content/ssg-rhel7-xccdf.xml
```
The bash script under the testing directory is experimental but should record most of the security parameters on your system. Copy that to your target machine and run as root.
## License
MIT License

Copyright for portions of RHEL7-CIS are held by

Copyright (c) 2015 MindPoint Group http://www.mindpointgroup.com

as part of RHEL7-CIS.

All other copyright for project RHEL7-CIS are held by 

Copyright (c) 2018-2019 Radsec

AND

Copyright (c) 2018-2019 Coalfire

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
