FROM alpine:edge

EXPOSE 8118

COPY root/etc/privoxy-blacklist /etc/

RUN apk --no-cache --update add privoxy wget ca-certificates bash unzip && \
    wget https://github.com/Andrwe/privoxy-blocklist/archive/master.zip && \
    unzip master.zip && \
    sed -i'' 's/\/etc\/conf\.d\/privoxy-blacklist/\/etc\/privoxy-blacklist/' /privoxy-blocklist-master/privoxy-blocklist.sh && \ 
    sed -i'' 's/127\.0\.0\.1:8118/0\.0\.0\.0:8118/' /etc/privoxy/config && \ 
    sed -i'' 's/enable-edit-actions\ 0/enable-edit-actions\ 1/' /etc/privoxy/config && \ 
    ./privoxy-blocklist-master/privoxy-blocklist.sh && \ 
    rm -Rf privoxy-blocklist-master master.zip  && \
    apk del bash
#ENTRYPOINT ["privoxy"]
#CMD ["--pidfile","/run/privoxy.pid","--user","privoxy","/etc/privoxy/config"]
