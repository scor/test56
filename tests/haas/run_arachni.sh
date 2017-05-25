#!/usr/bin/env bash

HOSTNAME=`hostname`
ADDRESS=`cat /etc/hosts | grep $HOSTNAME | cut -d "	" -f1`
echo "Binding proxy on $ADDRESS"

echo "Scanning with arachni..."
 ./tests/haas/arachni/bin/arachni http://`hostname`:8888 --timeout 0:2:00 --checks=*,-file_inclusion,-ldap_injection,-no_sql_injection*,-path_traversal,-backdoors,-backup_directories,-backup_files,-common_admin_interfaces,-common_directories,-common_files,-directory_listing,-captcha,-cvs_svn_users,-emails,-private_ip,-ssn,-localstart_asp,-webdav --scope-exclude-pattern '.*\.css' --scope-exclude-pattern '\/devel\/.*' --scope-exclude-pattern '\/sites\/.*\/files\/.*' --scope-exclude-pattern 'user\/logout' --scope-auto-redundant=10 --audit-links --audit-forms --platforms 'linux,sql,mysql,apache,php,symfony' --plugin "proxy:port=9595,bind_address=$ADDRESS" --plugin autologin:url=http://`hostname`:8888/user/login,parameters='name=demo&pass=demo',check='Log out' --scope-extend-paths /mnt/tmp/local.prod/source/tests/haas/drupal_route_list_lite.txt &

sleep 5
