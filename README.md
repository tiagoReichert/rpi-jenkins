# rpi-jenkins
Jenkins container for Raspberry Pi (ARM)

### How to run

```console
docker run -d -p 8080:8080 -v jenkins_data:/home/jenkins --name jenkins --restart unless-stopped tiagoreichert/rpi-jenkins
```