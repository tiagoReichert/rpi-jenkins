## Jenkins container for Raspberry Pi (ARM)

### How to run
```console
docker run -d -p 8080:8080 -v jenkins_data:/var/jenkins_home --name jenkins --restart unless-stopped tiagoreichert/rpi-jenkins
```
##### Two versions available 
- latest
- 1.658

### Github
https://github.com/tiagoReichert/rpi-jenkins
