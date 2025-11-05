#!/bin/bash

#=================================================
# COMMON VARIABLES AND CUSTOM HELPERS
#=================================================

_download_vaultwarden_from_docker() {
    docker_image="vaultwarden/server"
    debian=$(lsb_release --codename --short)
    if [[ $debian = "bullseye" ]]; then
        docker_version="$(ynh_app_upstream_version)"
    else
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
    mv "$install_dir/build/"{vaultwarden,web-vault} "$install_dir/live/"
    ynh_safe_rm "$install_dir/build"

    chmod 750 "$install_dir"
    chmod -R o-rwx "$install_dir"
    chown -R $app:$app "$install_dir"
}

sqlite3-to-postgresql() {
    ynh_print_info "Migrating SQLite3 to PostgreSQL database..."

    tmpdir="$(mktemp -d)"
    ynh_config_add --template="bitwarden.load" --destination="$tmpdir/bitwarden.load"

    pgloader "$tmpdir/bitwarden.load"
    ynh_safe_rm "$tmpdir/bitwarden.load"
}
