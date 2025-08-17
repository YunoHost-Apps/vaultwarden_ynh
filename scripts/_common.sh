#!/bin/bash

#=================================================
# COMMON VARIABLES AND CUSTOM HELPERS
#=================================================

sqlite3-to-postgresql() {
    ynh_print_info "Migrating SQLite3 to PostgreSQL database..."

    tmpdir="$(mktemp -d)"
    ynh_config_add --template="vaultwarden.load" --destination="$tmpdir/vaultwarden.load"

    pgloader "$tmpdir/vaultwarden.load"
    ynh_safe_rm "$tmpdir/vaultwarden.load"
}
