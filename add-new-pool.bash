#! /bin/bash

name=$1

set -eEu
set -o pipefail

if [[ -z "${name}" ]]; then
    echo "Usage: ./add-new-pool.bash <NAME>"
    exit 1
fi

echo "Adding new pool: ${name}"
mkdir "${name}"
mkdir "${name}/claimed"
touch "${name}/claimed/.gitkeep"
mkdir "${name}/unclaimed"
touch "${name}/unclaimed/.gitkeep"
touch "${name}/unclaimed/${name}"

echo "Done!"
