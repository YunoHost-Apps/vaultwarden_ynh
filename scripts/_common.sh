#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

pkg_image="vaultwarden/server"

#=================================================
# PERSONAL HELPERS
#=================================================

_download_vaultwarden_from_docker() {

    # Download, check integrity, uncompress the source of vaultwarden from app.src to his build directory
    docker_arg=""
    # Fixup for armhf
    if [ "$YNH_ARCH" == "armhf" ]; then
        docker_arg="--os_arch_variant=linux/arm/v7"
    fi
    ynh_docker_image_extract --dest_dir="$install_dir/build/" --image_spec="$pkg_image:$(ynh_app_upstream_version)" $docker_arg

    # Move files from the extract to the live directory
    ynh_secure_remove --file="$install_dir/live/"
    mkdir -p "$install_dir/live/"
    mv -f "$install_dir/build/"{vaultwarden,web-vault} "$install_dir/live/"
    ynh_secure_remove --file="$install_dir/build"

    # fixes the libssl.so.3 not found bug since libssl3 is not available on bullseye
    if [ ! -f /usr/lib/x86_64-linux-gnu/libssl.so.3 ]; then
        ln -s /usr/lib/x86_64-linux-gnu/libssl.so /usr/lib/x86_64-linux-gnu/libssl.so.3
    fi

    chmod 750 "$install_dir"
    chmod -R o-rwx "$install_dir"
    chown -R $app:$app "$install_dir"
}

#=================================================
# EXPERIMENTAL HELPERS
#=================================================

#=================================================
# FUTURE OFFICIAL HELPERS
#=================================================
