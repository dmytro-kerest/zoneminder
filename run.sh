# !/bin/sh

docker run -d --name="Zoneminder" \
--net="bridge" \
--privileged="true" \
--restart=always \
-p 8443:443/tcp \
-p 9090:9000/tcp \
-p 8080:80/tcp \
-e TZ="Europe/Kiev" \
-e SHMEM="512mb" \
-e PUID="1000" \
-e PGID="462" \
-e INSTALL_HOOK="0" \
-e INSTALL_FACE="0" \
-e INSTALL_TINY_YOLOV3="0" \
-e INSTALL_YOLOV3="0" \
-e INSTALL_TINY_YOLOV4="0" \
-e INSTALL_YOLOV4="0" \
-e MULTI_PORT_START="0" \
-e MULTI_PORT_END="0" \
-v "/home/dima/zoneminder/config":"/config":rw \
-v "/home/dima/zoneminder/data":"/var/cache/zoneminder":rw \
dlandon/zoneminder
