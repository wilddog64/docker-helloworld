# docker-helloworld
This is a docker hello world sample. It simply try to complete the followings

* build a httpd server (use apache 2.4)
* an index.html that will show Hello World
* configure an access_log

## Image Version
This project use CentOS/7

## Apache Version
Here we use [Apache 2.4](https://hub.docker.com/_/httpd/)

## Provision Tool
We use Vagrant Docker provisioner. This allow vagrant to install Docker to vagrant box image.

## Port Forwarding

* Docker http container is set to listen on port 80, and forward this port to CentOS
* Vagrant is configured to forward port 80 from guest to host port 8089

## Deploy Apache Httpd Docker Container

* To build a docker container, run ```vagrant up```
* To provision an existing container within vagrant box, run ```vagrant provision```
* To restart a vagrant box, run ```vagrant reload```
* To restart a vagrant box and provision docker container, run ```vagrant reload --provision```
* To destroy a vagrant box, run ```vagrant destroy -f```

Note:
You can do vagrant destroy and up in on handy command by installing ```vagrant-pristine```. To install this plugin, run ```vagrant plugin install vagrant-pristine```. Then simply run this command,

    vagrant pristine -f

## Verification
### Verify By Browser
Open your favior brower, and enter ```http://localhost:8089```, after hitting the enter, you should see

    Hello World

### Verify By curl Command Line Tool
open terminal or command prompt and enter ```curl http://localhost:8089```, and you will see

    <html><body><h1>Hello World</h1></body></html>
