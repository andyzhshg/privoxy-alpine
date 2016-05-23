FROM alpine:edge

EXPOSE 8118

COPY root/etc/privoxy-blacklist /etc/

RUN apk --update add privoxy wget ca-certificates unzip bash s6 && \
    wget https://github.com/Andrwe/privoxy-blocklist/archive/master.zip && \
    unzip master.zip && \
    sed -i'' 's/\/etc\/conf\.d\/privoxy-blacklist/\/etc\/privoxy-blacklist/' /privoxy-blocklist-master/privoxy-blocklist.sh && \ 
    sed -i'' 's/127\.0\.0\.1:8118/0\.0\.0\.0:8118/' /etc/privoxy/config && \ 
    ./privoxy-blocklist-master/privoxy-blocklist.sh 
#ENTRYPOINT ["privoxy"]
#CMD ["--pidfile","/run/privoxy.pid","--user","privoxy","/etc/privoxy/config"]
