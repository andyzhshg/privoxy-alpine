# privoxy-alpine

Docker image with Privoxy on Alpine Linux.

```
docker run -d -p 8118:8118 splazit/privoxy-alpine
curl --proxy localhost:8118 https://www.google.com
```