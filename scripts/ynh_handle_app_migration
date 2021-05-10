#!/bin/bash

# Need also the helper https://github.com/YunoHost-Apps/Experimental_helpers/blob/master/ynh_handle_getopts_args/ynh_handle_getopts_args

# Make the main steps to migrate an app to its fork.
#
# This helper has to be used for an app which needs to migrate to a new name or a new fork
# (like owncloud to nextcloud or zerobin to privatebin).
#
# This helper will move the files of an app to its new name
# or recreate the things it can't move.
#
# To specify which files it has to move, you have to create a "migration file", stored in ../conf
# This file is a simple list of each file it has to move,
# except that file names must reference the $app variable instead of the real name of the app,
# and every instance-specific variables (like $domain).
# $app is especially important because it's this variable which will be used to identify the old place and the new one for each file.
#
# If a database exists for this app, it will be dumped and then imported in a newly created database, with a new name and new user.
# Don't forget you have to then apply these changes to application-specific settings (depends on the packaged application)
#
# Same things for an existing user, a new one will be created.
# But the old one can't be removed unless it's not used. See below.
#
# If you have some dependencies for your app, it's possible to change the fake debian package which manages them.
# You have to fill the $pkg_dependencies variable, and then a new fake package will be created and installed,
# and the old one will be removed.
# If you don't have a $pkg_dependencies variable, the helper can't know what the app dependencies are.
#
# The app settings.yml will be modified as follows:
# - finalpath will be changed according to the new name (but only if the existing $final_path contains the old app name)
# - The checksums of php-fpm and nginx config files will be updated too.
# - If there is a $db_name value, it will be changed.
# - And, of course, the ID will be changed to the new name too.
#
# Finally, the $app variable will take the value of the new name.
# The helper will set the $migration_process variable to 1 if a migration has been successfully handled.
#
# You have to handle by yourself all the migrations not done by this helper, like configuration or special values in settings.yml
# Also, at the end of the upgrade script, you have to add a post_migration script to handle all the things the helper can't do during YunoHost upgrade (mostly for permission reasons),
# especially remove the old user, move some hooks and remove the old configuration directory
# To launch this script, you have to move it elsewhere and start it after the upgrade script.
# `cp ../conf/$script_post_migration /tmp`
# `(cd /tmp; echo "/tmp/$script_post_migration" | at now + 2 minutes)`
#
# usage: ynh_handle_app_migration migration_id migration_list
# | arg: -i, --migration_id= - ID from which to migrate
# | arg: -l, --migration_list= - File specifying every file to move (one file per line)
ynh_handle_app_migration ()  {
  # Need for end of install
  ynh_package_install at

  #=================================================
  # LOAD SETTINGS
  #=================================================

  old_app=$YNH_APP_INSTANCE_NAME
  local old_app_id=$YNH_APP_ID
  local old_app_number=$YNH_APP_INSTANCE_NUMBER

  # Declare an array to define the options of this helper.
  declare -Ar args_array=( [i]=migration_id= [l]=migration_list= )
  # Get the id from which to migrate
  local migration_id
  # And the file with the paths to move
  local migration_list
  # Manage arguments with getopts
  ynh_handle_getopts_args "$@"

  # Get the new app id in the manifest
  local new_app_id=$(grep \"id\": ../manifest.json | cut -d\" -f4)
  if [ $old_app_number -eq 1 ]; then
    local new_app=$new_app_id
  else
    local new_app=${new_app_id}__${old_app_number}
  fi

  #=================================================
  # CHECK IF IT HAS TO MIGRATE 
  #=================================================

  migration_process=0

  if [ "$old_app_id" == "$new_app_id" ]
  then
    # If the 2 id are the same
    # No migration to do.
    echo 0
    return 0
  else
    if [ "$old_app_id" != "$migration_id" ]
    then
        # If the new app is not the authorized id, fail.
        ynh_die --message="Incompatible application for migration from $old_app_id to $new_app_id"
    fi

    ynh_print_info --message="Migrate from $old_app_id to $new_app_id" >&2

    #=================================================
    # CHECK IF THE MIGRATION CAN BE DONE
    #=================================================

    # TODO Handle multi instance apps...
    # Check that there is not already an app installed for this id.
    (yunohost app list | grep -q -w "id: $new_app") \
    && ynh_die --message="$new_app is already installed"

    #=================================================
    # CHECK THE LIST OF FILES TO MOVE
    #=================================================

    local temp_migration_list="$(tempfile)"

    # Build the list by removing blank lines and comment lines
    sed '/^#.*\|^$/d' "../conf/$migration_list" > "$temp_migration_list"

    # Check if there is no file in the destination
    local file_to_move=""
    while read file_to_move
    do
        # Replace all occurences of $app by $new_app in each file to move.
        local move_to_destination="${file_to_move//\$app/$new_app}"
        test -e "$move_to_destination" && ynh_die --message="A file named $move_to_destination already exists."
    done < "$temp_migration_list"

    #=================================================
    # COPY YUNOHOST SETTINGS FOR THIS APP
    #=================================================

    local settings_dir="/etc/yunohost/apps"
    cp -a "$settings_dir/$old_app" "$settings_dir/$new_app"
    cp -a ../{scripts,conf,manifest.json} "$settings_dir/$new_app"

    # Replace the old id by the new one
    ynh_replace_string --match_string="\(^id: .*\)$old_app" --replace_string="\1$new_app" --target_file="$settings_dir/$new_app/settings.yml"
    # INFO: There a special behavior with yunohost app setting:
    # if the id given in argument does not match with the id
    # stored in the config file, the config file will be purged.
    # That's why we use sed instead of app setting here.
    # https://github.com/YunoHost/yunohost/blob/c6b5284be8da39cf2da4e1036a730eb5e0515096/src/yunohost/app.py#L1316-L1321

    # Change the label if it's simply the name of the app
    old_label=$(ynh_app_setting_get --app=$new_app --key=label)
    if [ "${old_label,,}" == "$old_app_id" ]
    then
        # Build the new label from the id of the app. With the first character as upper case
        new_label=$(echo $new_app_id | cut -c1 | tr [:lower:] [:upper:])$(echo $new_app_id | cut -c2-)
        ynh_app_setting_set --app=$new_app --key=label --value=$new_label
    fi
    
    permissions_name=$(yunohost user permission list $old_app --short --output-as plain)
    for permission_name in $permissions_name
    do
      yunohost tools shell -c "from yunohost.permission import permission_delete; permission_delete('$permission_name', force=True, sync_perm=False)"
    done

    yunohost tools shell -c "from yunohost.permission import permission_create; permission_create('$new_app.main', url='/' , show_tile=True , sync_perm=True)"

    #=================================================
    # MOVE FILES TO THE NEW DESTINATION
    #=================================================

    while read file_to_move
    do
        # Replace all occurence of $app by $new_app in each file to move.
        move_to_destination="$(eval echo "${file_to_move//\$app/$new_app}")"
        local real_file_to_move="$(eval echo "${file_to_move//\$app/$old_app}")"
        ynh_print_info --message="Move file $real_file_to_move to $move_to_destination" >&2
        mv "$real_file_to_move" "$move_to_destination"
    done < "$temp_migration_list"

    #=================================================
    # UPDATE SETTINGS KNOWN ENTRIES
    #=================================================

    # Replace nginx checksum
    ynh_replace_string --match_string="\(^checksum__etc_nginx.*\)_$old_app" --replace_string="\1_$new_app" --target_file="$settings_dir/$new_app/settings.yml"

    # Replace php-fpm checksums
    ynh_replace_string --match_string="\(^checksum__etc_php.*[-_]\)$old_app" --replace_string="\1$new_app" --target_file="$settings_dir/$new_app/settings.yml"

    # Replace final_path
    ynh_replace_string --match_string="\(^final_path: .*\)$old_app" --replace_string="\1$new_app" --target_file="$settings_dir/$new_app/settings.yml"

    # Replace fail2ban_filter
    ynh_replace_string --match_string="\(^checksum__etc_fail2ban_filter.*\)_$old_app" --replace_string="\1_$new_app" --target_file="$settings_dir/$new_app/settings.yml"

    # Replace fail2ban_jail
    ynh_replace_string --match_string="\(^checksum__etc_fail2ban_jail.*\)_$old_app" --replace_string="\1_$new_app" --target_file="$settings_dir/$new_app/settings.yml"

    # Replace systemd
    ynh_replace_string --match_string="\(^checksum__etc_systemd_system.*\)_$old_app" --replace_string="\1_$new_app" --target_file="$settings_dir/$new_app/settings.yml"

    #=================================================
    # MOVE THE MYSQL DATABASE
    #=================================================

    old_db_name=$(ynh_app_setting_get --app=$old_app --key=db_name)
    
    # Check if a database exists before trying to move it
    local mysql_root_password=$(cat $MYSQL_ROOT_PWD_FILE)
    if [ -n "$old_db_name" ] && mysqlshow -u root -p$mysql_root_password | grep -q "^| $old_db_name"
    then
        old_db_user=$old_db_name
        db_pwd=$(ynh_app_setting_get --app=$old_app --key=mysqlpwd)

        new_db_name=$(ynh_sanitize_dbid --db_name=$new_app)
        new_db_user=$new_db_name
        ynh_print_info --message="Rename the database $db_name to $new_db_name" >&2

        local sql_dump="/tmp/${db_name}-$(date '+%s').sql"

        # Dump the old database
        ynh_mysql_dump_db --database="$old_db_name" > "$sql_dump"

        # Create a new database
        ynh_mysql_setup_db --db_user=$new_db_user --db_name=$new_db_name --db_pwd=$db_pwd
        
        # Then restore the old one into the new one
        ynh_mysql_connect_as --user=$new_db_user --password=$db_pwd --database=$new_db_name < "$sql_dump"

        # Remove the old database
        ynh_mysql_remove_db --db_user=$old_db_user --db_name=$old_db_name

        # And the dump
        ynh_secure_remove --file="$sql_dump"

        # Update the value of $db_name
        db_name=$new_db_name
        db_user=$new_db_user
        ynh_app_setting_set --app=$new_app --key=db_name --value=$db_name
    fi

    #=================================================
    # CHANGE THE FAKE DEPENDENCIES PACKAGE
    #=================================================

    # Check if a variable $pkg_dependencies exists
    # If this variable doesn't exist, this part shall be managed in the upgrade script.
    if [ -n "${pkg_dependencies:-}" ]
    then
      # Define the name of the package
      local old_package_name="${old_app//_/-}-ynh-deps"
      local new_package_name="${new_app//_/-}-ynh-deps"

      if ynh_package_is_installed --package="$old_package_name"
      then
        # Install a new fake package
        app=$new_app
        ynh_install_app_dependencies $pkg_dependencies
        # Then remove the old one
        app=$old_app
        ynh_remove_app_dependencies
      fi
    fi

    #=================================================
    # UPDATE THE ID OF THE APP
    #=================================================

    app=$new_app

    # Set migration_process to 1 to inform that an upgrade has been made
    migration_process=1
  fi
}
