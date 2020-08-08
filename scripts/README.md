# egeria-setup-tools

## Scripts

1. Make all scripts executable:

   ```sh
   cd scripts
   chmod +x *sh
   ```

1. Pull OMAG Server Platform's latest Docker image:

   ```sh
   ./pull-server-platform-docker-image.sh
   ```

1. Run the OMAG Server Platform using Docker:

   ```sh
   ./run-server-platform-docker.sh <HOST-LIBS-DIRECTORY>
   ```

1. Start an OMAG Server using a stored configuration:

   ```sh
   ./start-server-supplied-config-docker.sh <USER_ID> <SERVER_ID>
   ```

Back to [Home](/../../)
