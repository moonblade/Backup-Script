echo "Preparing backup"
while IFS=, read -r source destination
do
    echo "Copying $source to $destination"
    cp -rf $source $destination
done < /Users/moonblade/workspace/backupScripts/mapping.csv
echo ""