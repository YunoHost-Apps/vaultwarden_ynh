#!/bin/bash

#=================================================
# COMMON VARIABLES AND CUSTOM HELPERS
#=================================================

sqlite3-to-postgresql() {
    ynh_print_info "Migrating SQLite3 to PostgreSQL database..."

    tmpdir="$(mktemp -d)"
    ynh_config_add --template="bitwarden.load" --destination="$tmpdir/bitwarden.load"

    pgloader "$tmpdir/bitwarden.load"
    ynh_safe_rm "$tmpdir/bitwarden.load"
}
