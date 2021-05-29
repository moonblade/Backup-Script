echo "Started backup script"
/Users/moonblade/workspace/backupScripts/prepareBackup.sh 
/usr/local/bin/rclone sync /Users/moonblade/workspace --filter-from /Users/moonblade/workspace/backupScripts/filter.conf box:mac_backup --log-file=/Users/moonblade/backup.log --log-level INFO
date -u +"%Y-%m-%d %H:%M:%S" > /Users/moonblade/.last_backup_date
echo "Completed backup script"
