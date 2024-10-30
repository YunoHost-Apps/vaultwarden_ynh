#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

#=================================================
# PERSONAL HELPERS
#=================================================

_download_vaultwarden_from_docker() {
    debian=$(lsb_release --codename --short)
    if [[ $debian = "bullseye" ]]; then
        docker_image="p4p4j0hn/vaultwarden_ynh"
        docker_version="$(ynh_app_upstream_version)"
    elif [[ $debian = "bookworm" ]]; then
        docker_image="vaultwarden/server"
        docker_version="$(ynh_app_upstream_version)"
    fi

    docker_arg=""
    # Fixup for armhf
    if [ "$YNH_ARCH" == "armhf" ]; then
        docker_arg="--os_arch_variant=linux/arm/v7"
    fi

    ynh_docker_image_extract --dest_dir="$install_dir/build/" --image_spec="$docker_image:$docker_version" $docker_arg

    # Move files from the extract to the live directory
    ynh_secure_remove --file="$install_dir/live/"
    mkdir -p "$install_dir/live/"
    mv -f "$install_dir/build/"{vaultwarden,web-vault} "$install_dir/live/"
    ynh_secure_remove --file="$install_dir/build"

    chmod 750 "$install_dir"
    chmod -R o-rwx "$install_dir"
    chown -R $app:$app "$install_dir"
}
