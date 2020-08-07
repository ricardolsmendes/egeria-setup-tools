HOST_LIBS_DIRECTORY=$1
HOST_PORT=19443

if [ -z "$HOST_LIBS_DIRECTORY" ]
then
  echo No volumes...

  docker run \
    -d \
    -p ${HOST_PORT}:9443 \
    --rm \
    odpi/egeria
else
  echo Volumes:
  echo "  - /opt/egeria/server/lib < $HOST_LIBS_DIRECTORY"

  docker run \
    -d \
    -p ${HOST_PORT}:9443 \
    --rm \
    -v ${HOST_LIBS_DIRECTORY}:/opt/egeria/server/lib \
    odpi/egeria
fi
