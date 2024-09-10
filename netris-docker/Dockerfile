FROM alpine:latest
RUN apk add --update wget openssh-client libc6-compat && ssh-keygen -t rsa -N "" -f id_rsa
RUN mkdir netris
WORKDIR ./netris
RUN wget https://netris.rocketnine.space/download/0.1.9/netris_0.1.9_linux_amd64.tar.gz
RUN tar xfvz ./n*
RUN ssh-keygen -q -t rsa -N '' -f ~/.ssh/id_rsa 
ENV port=4096
CMD /bin/sh
CMD ./netris-server --listen-ssh 0.0.0.0:$port --listen-tcp 0.0.0.0:$(($port-100)) -netris ./netris -verbose
