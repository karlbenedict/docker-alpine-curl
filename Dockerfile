FROM alpine:3.7

RUN apk add --no-cache curl
RUN apk add --no-cache unzip
RUN apk add --no-cache bash

COPY Retrieve.sh /root/Retrieve.sh
RUN chmod u+x /root/Retrieve.sh

# ENTRYPOINT ["/usr/bin/curl"]
CMD /root/Retrieve.sh
