# alfirefox
A Firefox dockerized in an Alpine Docker GNome container


# Created as part of this experimentation : 

# How to run a GUI app from a docker image ?

[SEE LATEST VERSION OF THIS FILE: https://gist.github.com/jgwill/fdf20ccc691b0b1306ea812931893fc1](https://gist.github.com/jgwill/fdf20ccc691b0b1306ea812931893fc1)

----

## Summary

* X server install on windows (VcXsrv)
* Sample docker file build (firefox)
* Environment setup and launch (Powershell)


# Prerequisite

* choco ([Install](https://chocolatey.org/docs/installation))
* Powershell ([Install](https://github.com/PowerShell/PowerShell))
* Docker ([Install](https://docs.docker.com/docker-for-windows/install/))

## VcXsrv 

```sh
choco install vcxsrv
```

## Docker image  (Firefox)

```dockerfile
FROM ubuntu:20.04
RUN apt-get update && apt-get install -y firefox
CMD /usr/bin/firefox
```

## Build docker image

```sh
docker build -t jgwill/x__remoting_in_docker__20110922 .

```

## Start XLaunch

* run (WinK + r)  Xlaunch
* Next, Next until you see settings with : "**Disable access control**" which you click
![Disable access control](https://i.imgur.com/hoHN3d0.png)

## Setup display & Run the image (Powershell)
```powershell
set-variable -name myip -value 192.168.1.76

set-variable -name DISPLAY -value $myip:0.0
docker run -ti --rm -e DISPLAY=$DISPLAY jgwill/x__remoting_in_docker__20110922
```


# References 

https://www.docker.com/blog/how-to-deploy-on-remote-docker-hosts-with-docker-compose/
