while IFS=, read -r col1 col2
do
    echo "I got:$col1|$col2"
done < myfile.csv