transmission
============

A Docker image for Transmission

```
$ docker pull eternnoir/transmission 
$ docker run -d -i  -p 64321:64321 -p 64321:64321/udp -p 9091:9091 -v /local/btDir:/var/lib/transmission-daemon/downloads eternnoir/transmission 
```

Default username/password : transmission/pwd

You can edit it at settings.json
