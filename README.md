# docker-zfsnap
The zfsnap tool packaged inside an alpine container

Can be used to make zfs rolling snapshots of zfs pools or partitions

zfsnap official documentation : <https://www.zfsnap.org/zfsnap_manpage.html>

## Create snapshots
    docker run --privileged -v /dev/zfs:/dev/zfs docker-zfsnap zfsnap snapshot -a TTL -r ZFS_POOL

## Clean expired snapshots
    docker run --privileged -v /dev/zfs:/dev/zfs docker-zfsnap zfsnap destroy -r ZFS_POOL
