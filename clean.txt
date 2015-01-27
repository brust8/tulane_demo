# This script performs cleaning operations on country files with errors

cd data/clean

#fix Guinea file  -  middle twelve rows only
echo "Fixing Guinea.cc.txt file"
head -n 24 Guinea.cc.txt | tail -n 12 > Guinea.cc.txt.clean
mv -v Guinea.cc.txt.clean Guinea.cc.txt

#fix China file - top twelve rows only
echo "Fixing China.cc.txt file"
head -n 12 China.cc.txt > China.cc.txt.clean
mv -v China.cc.txt.clean China.cc.txt

#fix Niger file - top twelve only
echo "Fixing Niger.cc.txt file"
head -n 12 Niger.cc.txt > Niger.cc.txt.clean
mv -v Niger.cc.txt.clean Niger.cc.txt

cd ../..

sleep 1
