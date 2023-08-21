#!/usr/bin/env bash

cron_file_name="trackball_cron.txt"
echo "@reboot sh $PWD/trackball-setup.sh" >> $cron_file_name
crontab $cron_file_name
rm $cron_file_name
