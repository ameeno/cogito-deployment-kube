# Instructions

1. create your add the keypairs in ./keys folder or replace with your preferred ssh keys.
2. create 3 ubuntu instances with the keypair having root access (and ssh configured)
3. ensure firewall port 80 and port 8181 is open (depends on your cloud provider)
4. put the ip of your three nodes into the ./hosts file.
5. run chmod+x deploy-ansible.sh && ./deploy-ansible.sh in this directory.
6. .... ansible will build you a k8s cluster and deploy your code
7. profit!!

PS i will put an example of a cloud generated set of instances & firewall openings.

pps. code can be updated by building and pushing to dockerhub for the api/web portion. postgres is just a community image, and there is no persistent storage!
