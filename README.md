# Instructions

1. create your add the keypairs in ./keys folder or replace with your preferred ssh keys.
2. create 3 ubuntu instances with the keypair having root access (and ssh configured)
3. ensure firewall port 80 and port 8181 is open (depends on your cloud provider)
4. put the ip of your three nodes into the ./hosts file.
5. run chmod+x deploy-ansible.sh && ./deploy-ansible.sh in this directory.
6. .... ansible will build you a k8s cluster and deploy your code
7. profit!!

PS will put an example of a cloud generated set of instances & firewall openings.

pps. code can be updated by building and pushing to dockerhub for the api/web portion. postgres is just a community image, and there is no persistent storage!

# Auto Creation of VM's

Ec2 aws Instances can be automatically created.
There are some requirements, such as python, aws-cli, boto.
they are listed in the REQS.md

- 1. upload your ssh keys to aws with the key name `Ansible`
- 2. put your amazon cli access key and secret key into ./create-ec2/create-ec2.yml
- 3. Create an aws Security group called "Ansible" with port 80 port 22 and port 8181 open on AWS.
- 4. run `ansible-playbook ./create-ec2/create-ec2.yml` to build the instances, it will take a while to build and take note of the three public IP's - Check aws gui to grab the instance IP's and see if they are ready.
- 5. put those 3 public ip's into ./hosts file and run deploy-ansible.sh as master_ip, worker_1_ip & worker_2_ip
