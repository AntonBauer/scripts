#!/usr/bin/env bash

cron_file_name="jobs.txt"

# cron jobs
echo "@reboot root ~/development/scripts/setup-scripts/trackball-setup.sh" >> $cron_file_name
echo "@reboot root protonvpn-cli c --cc NL -p tcp" >> $cron_file_name

crontab $cron_file_name
rm $cron_file_name
