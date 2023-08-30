#!/usr/bin/env bash

cron_file_name="jobs.txt"
setup_scripts_dir="$HOME/development/scripts/setup-scripts"

# cron jobs
echo "@reboot root $setup_scripts_dir/trackball-setup.sh" >> $cron_file_name
echo "@reboot root $setup_scripts_dir/vpn-setup.sh" >> $cron_file_name

crontab $cron_file_name
rm $cron_file_name
