cd /rootDir/ for FILE in *; do

count=$(grep -c $FILE /var/log/nginx/access.log)

size=$(du $FILE | cut -f1)

BW4File=$((count * size))

echo $FILE $BW4File"K"

done
