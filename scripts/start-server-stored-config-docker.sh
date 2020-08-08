HOST=localhost
HTTPS_PORT=19443
USER_ID=$1
SERVER_ID=$2

curl \
  --insecure \
  -X \
  POST "https://${HOST}:${HTTPS_PORT}/open-metadata/admin-services/users/${USER_ID}/servers/${SERVER_ID}/instance"
