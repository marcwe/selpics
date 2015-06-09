cd full
find . -maxdepth 1 \( -iname "*jpg" -o -iname "*gif" -o -iname "*.png" \) -type f > ../flist.txt
cd ../
sed  -i 's#\./##g' flist.txt
mkdir thumb10;
echo "10 step 1"
mkdir thumb15;
mkdir thumb20;
mkdir thumb30
mkdir thumb40
mkdir thumb50
echo "50 step 1 done"
cp full/* thumb10/.
cp full/* thumb15/.
cp full/* thumb20/.
cp full/* thumb30/.
cp full/* thumb40/.
cp full/* thumb50/.
echo "50 step 2 done"
cd thumb10
mogrify -resize 10% *
cd ../
cd thumb15
mogrify -resize 15% *
cd ../
cd thumb20
mogrify -resize 20% *
echo "20 step 2 done"
cd ../
cd thumb30
mogrify -resize 30% *
echo "30 step 3 done"
cd ../
cd thumb40
mogrify -resize 40% *
cd ../
cd thumb50
mogrify -resize 50% *
cd ../
python picarray.py flist.txt thumb10 5  DO Class of 2015 graduation
python picarray.py flist.txt thumb15 4  DO Class of 2015 graduation
python picarray.py flist.txt thumb20 3  DO Class of 2015 graduation
python picarray.py flist.txt thumb30 3  DO Class of 2015 graduation
python picarray.py flist.txt thumb40 2  DO Class of 2015 graduation
python picarray.py flist.txt thumb50 2  DO Class of 2015 graduation
