mkdir thumb10
mkdir thumb15
mkdir thumb20
mkdir thumb30
mkdir thumb40
mkdir thumb50
cp full/. thumb10/.
cp full/. thumb15/.
cp full/. thumb20/.
cp full/. thumb30/.
cp full/. thumb40/.
cp full/. thumb50/.
cd thumb10
mogrify -resize 10% * 
cd ../
cd thumb15
mogrify -resize 15% *
cd ../
cd thumb20
mogrify -resize 20% *
cd ../
cd thumb30
mogrify -resize 30% *
cd ../
cd thumb40
mogrify -resize 40% *
cd ../
cd thumb50
mogrify -resize 50% *
cd ../
