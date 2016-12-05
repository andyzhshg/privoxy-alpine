# privoxy-alpine

A privoxy docker image based on Alpine Linux. This image also incoperates AdBlock lists which is from https://projects.zubr.me/wiki/adblock2privoxy

```
docker run -d --restart always --name privoxy -p 8118:8118 splazit/privoxy-alpine
```
