#/usr/bin/env bash
#
# Build an individual container image.
set -euf -o pipefail

readonly AUTHOR="jlaswell"
CONTAINER=$1

if [ -d $CONTAINER ] && [ -r $CONTAINER/Dockerfile ]; then
    docker build --pull -t $AUTHOR/$CONTAINER -f $CONTAINER/Dockerfile $CONTAINER || exit 1
else
    echo "No configuration found for $CONTAINER."
fi

docker push $AUTHOR/$CONTAINER
