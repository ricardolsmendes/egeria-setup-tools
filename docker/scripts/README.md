# egeria-setup-tools

## Docker | scripts

1. Make all scripts executable:

   ```sh
   cd ./docker/scripts
   chmod +x *sh
   ```

1. Pull the OMAG Server Platform's latest image:

   ```sh
   ./pull-server-platform-image.sh
   ```

1. Run the Server Platform:

   ```sh
   ./run-server-platform.sh <HOST-LIBS-DIRECTORY>
   ```

1. Run the Server Platform with the JVM in _debug mode_:

   ```sh
   ./run-server-platform-debug.sh <HOST-LIBS-DIRECTORY>
   ```

Back to [Home](/../../)
