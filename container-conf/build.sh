#!/bin/bash
build_image_base=mariadb:10.2.14
build_is_public=1
build_simply=1
build_docker_cmd='[]'
build_dockerfile_aux='ENTRYPOINT []'

build_as_root() {
    cd "$build_guest_conf"
    build_create_run_user
    # we generate a single config /etc/my.cnf, and this has higher priority
    rm -rf /etc/mysql
}
