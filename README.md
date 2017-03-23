# privoxy-alpine

A privoxy docker image based on Alpine Linux. This image also incoperates AdBlock lists which is from https://projects.zubr.me/wiki/adblock2privoxy

```
docker run -d --restart unless-stopped --name privoxy -p 8118:8118 splazit/privoxy-alpine
```
Once the proxy started and set your browser goes through the proxy, you can edit the proxy config at http://config.privoxy.org/
