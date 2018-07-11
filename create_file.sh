#/bin/bash
echo "Please input how much file u need??"
read file_number
echo "Please input your share folder path (example:/share/f1)"
read path
if [ ! -d $path ];
then                           
echo "path error pls try again"
exit 1
fi
echo "Please input your file size (example: 128k,128m,128g)just can support KB,MB,GB"
read size
echo "Please input your file extension?(example:mp3,mp4,txt,wav....)"
read file_extension
echo "Please input your file title (example:test123,test5566...)"
read filetitle
for i in $(seq 1 $file_number);
do
dd if=/dev/zero of=${path}/${filetitle}${i}.${file_extension} bs=${size} count=1
result=$?
if [ $result -eq 0 ];
then
echo "create file${i}.${file_extension} success!!!"

fi

done
