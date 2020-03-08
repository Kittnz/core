DATE=`date +%Y%m%d%H%M%S`
FPATH="migrations/$DATE"_world.sql

touch "$FPATH"

if [ -e "$FPATH" ]; then
	echo -e "replace into migrations values ('$DATE');" > $FPATH

else 
	echo "FAILED to create file"
fi
