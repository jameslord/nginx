
# this script is used to ease ctag related operations
# if c is used, the index will be rebuild
if [ -z $1 ]; then
	vim -c "set tags=tags";
elif [ $1 = "c" ]; then
	rm tags;
	ctags -R .
	vim -c "set tags=tags";
fi

