while IFS=, read -r source destination
do
    echo "Copying $source to $destination"
    cp -rf $source $destination
done < mapping.csv