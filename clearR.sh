#!/bin/sh
echo "Folder:";
read folder;

if [ ! -d $folder ]; then
	echo "[!] Folder not found!"
    exit 1
fi
cd $folder;
find . -regex '.*\(\.css\|\.js\|\.php\|\.html\)' -type f;
echo "Find `find . -regex '.*\(\.css\|\.js\|\.php\|\.html\)' -type f | wc -l` files. Update? [Y/N]";
read say;
if [ "$say" != "Y" ] && [ "$say" != "y" ]; then
	echo "break";
	exit 1
fi
echo "OK!";
for file in $(find . -regex '.*\(\.css\|\.js\|\.php\|\.html\)' -type f)
do
	echo $file;
 	tr -d \\r < $file > clearR_TEMP.tmp;
 	cat clearR_TEMP.tmp > $file;
 	rm clearR_TEMP.tmp;
done