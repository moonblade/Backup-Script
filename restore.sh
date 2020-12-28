/usr/local/bin/rclone sync box:mac_backup --filter-from /Users/moonblade/workspace/backupScripts/filter.conf /Users/moonblade/workspace
echo "Restoring data"
while IFS=, read -r destination source
do
    echo "Copying $source to $destination"
    cp -rf $source $destination
done < /Users/moonblade/workspace/backupScripts/mapping.csv
echo ""
