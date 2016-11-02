### EC2-Swarm ansible setup

This project is an example of ansible project used to setup Docker Swarm mode cluster on AWS EC2 VPC.

The process is made in two steps:
* Setup VPC, EC2 instances, create DNS records
* Install docker, join nodes to cluster

In playbooks directory you can find two corresponding playbooks:

`aws.yml` - uses Mehonoshin.ec2-vpc role, detailed information find at its [repo](https://github.com/Mehonoshin/ec2-vpc)
`core.yml` - setups cluster

#### Requirements
Docker Engine >= 1.12.1

#### Usage
`bin/aws` - setup EC2 VPC
`bin/core` - install and run docker swarm mode cluster

Current `Mehonoshin.ec2-vpc` role implementation requires Ansible 2.2, which in not available in pip.
For your convenience you can use [docker image](https://hub.docker.com/r/mexx/ansible-2.2/), that already has ansible 2.2, boto and other dependencies for this setup.

##### Dynamic inventory

#### Installation
* Drop `aws.pem` to your `~/.ssh` directory
* Update `ssh.cfg` with your hostname
* ./roles_install.sh
* install envrc and export AWS creds OR modify your AWS credentials in Dockerfile
* `bin/aws`
* `bin/core`
