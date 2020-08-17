HOST_LIBS_DIRECTORY=$1

# Ports to be published by the host machine.
HOST_DEBUG_PORT=5005
HOST_HTTPS_PORT=9443

if [ -z "$HOST_LIBS_DIRECTORY" ]
then
  echo No volumes...
  echo

  docker run \
    --detach \
    --env JAVA_DEBUG=1 \
    --publish ${HOST_DEBUG_PORT}:5005 \
    --publish ${HOST_HTTPS_PORT}:9443 \
    --rm \
    --tty \
    odpi/egeria
else
  echo Volumes:
  echo "  - $HOST_LIBS_DIRECTORY:/opt/egeria/server/lib"
  echo

  docker run \
    --detach \
    --env JAVA_DEBUG=1 \
    --publish ${HOST_DEBUG_PORT}:5005 \
    --publish ${HOST_HTTPS_PORT}:9443 \
    --rm \
    --tty \
    --volume ${HOST_LIBS_DIRECTORY}:/opt/egeria/server/lib \
    odpi/egeria
fi
