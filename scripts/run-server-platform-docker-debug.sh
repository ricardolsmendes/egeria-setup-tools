HOST_LIBS_DIRECTORY=$1
HOST_PORT=19443

if [ -z "$HOST_LIBS_DIRECTORY" ]
then
  echo No volumes...
  echo

  docker run \
    -d \
    -e JAVA_DEBUG=1 \
    -p 5005:5005 \
    -p ${HOST_PORT}:9443 \
    --rm \
    odpi/egeria
else
  echo Volumes:
  echo "  - $HOST_LIBS_DIRECTORY:/opt/egeria/server/lib"
  echo

  docker run \
    -d \
    -e JAVA_DEBUG=1 \
    -p 5005:5005 \
    -p ${HOST_PORT}:9443 \
    --rm \
    -v ${HOST_LIBS_DIRECTORY}:/opt/egeria/server/lib \
    odpi/egeria
fi
