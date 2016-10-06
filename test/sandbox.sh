#!/bin/bash
#
# Launch a container and console into it

test_dir="$(dirname $(readlink -f $BASH_SOURCE))"
payload_dir="$(readlink -f ${test_dir}/payloads)"
hookit_dir="$(readlink -f ${test_dir}/../src)"
util_dir="$(readlink -f ${test_dir}/util)"

# source the mist helpers
. ${util_dir}/mist.sh

# spawn a mist
echo "Launching a mist container..."
start_mist

# start a container for a sandbox
echo "Launching a sandbox container..."
docker run \
  --name=test-console \
  -d \
  --privileged \
  --net=nanobox \
  --ip=192.168.0.55 \
  --volume=${hookit_dir}/:/opt/nanobox/hooks \
  --volume=${payload_dir}/:/payloads \
  nanobox/pulse

# hop into the sandbox
echo "Consoling into the sandbox..."
docker exec -it test-console bash

# remove the sandbox
echo "Destroying the sandbox container..."
docker stop test-console
docker rm test-console

# remove the mist
echo "Destroying the mist container..."
stop_mist

echo "Bye."
