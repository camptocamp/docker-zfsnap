FROM alpine

LABEL maintainer="lenny.consuegra@camptocamp.com"

# Install zfs binaries
RUN apk add --no-cache zfs

# Install zfsnap tool (https://www.zfsnap.org/)
COPY zfsnap /usr/local/src/zfsnap/
RUN ln -s /usr/local/src/zfsnap/sbin/zfsnap.sh /usr/local/bin/zfsnap
