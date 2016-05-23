# privoxy-alpine

Docker image with Privoxy on Alpine Linux.

```
docker run -d --restart always --name privoxy -p 8118:8118 splazit/privoxy-alpine privoxy --no-daemon  --user privoxy /etc/privoxy/config
```
