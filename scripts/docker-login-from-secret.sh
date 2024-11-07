#!/bin/sh

set -e

harbor_credential_path="$1"

function login_docker_credentials() {
    local harbor_credential_path="$1"

    local username="$(yq -r '.name' -oj "$harbor_credential_path")"
    local secret="$(yq -r '.secret' -oj "$harbor_credential_path")"

    docker login -u "$username" -p "$secret" registry.niaefeup.pt
}

login_docker_credentials "$harbor_credential_path"
