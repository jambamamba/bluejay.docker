containerid=$(docker ps -a | grep bluejay | head -n1 | cut -d " " -f1); docker exec -it $containerid /bin/bash

