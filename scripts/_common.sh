#!/bin/bash

#=================================================
# COMMON VARIABLES AND CUSTOM HELPERS
#=================================================

_download_vaultwarden_from_docker() {
    docker_image="vaultwarden/server"
    debian=$(lsb_release --codename --short)
    if [[ $debian = "bullseye" ]]; then
        docker_version="$(ynh_app_upstream_version)"
    elif [[ $debian = "bookworm" ]]; then
        docker_version="$(ynh_app_upstream_version)-alpine"
    fi

    docker_arg=""
    # Fixup for armhf
    if [ "$YNH_ARCH" == "armhf" ]; then
        docker_arg="--os_arch_variant=linux/arm/v7"
    fi

    ynh_docker_image_extract --dest_dir="$install_dir/build/" --image_spec="$docker_image:$docker_version" $docker_arg

    # Move files from the extract to the live directory
    ynh_safe_rm "$install_dir/live/"
    mkdir -p "$install_dir/live/"
    mv -f "$install_dir/build/"{vaultwarden,web-vault} "$install_dir/live/"
    ynh_safe_rm "$install_dir/build"

    #REMOVEME? Assuming the install dir is setup using ynh_setup_source, the proper chmod/chowns are now already applied and it shouldn't be necessary to tweak perms | chmod 750 "$install_dir"
    #REMOVEME? Assuming the install dir is setup using ynh_setup_source, the proper chmod/chowns are now already applied and it shouldn't be necessary to tweak perms | chmod -R o-rwx "$install_dir"
    #REMOVEME? Assuming the install dir is setup using ynh_setup_source, the proper chmod/chowns are now already applied and it shouldn't be necessary to tweak perms | chown -R $app:$app "$install_dir"
}
