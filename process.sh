for i in 20*svg
do
	inkscape -f $i -w 842 -h 1191 -e `basename $i svg`png

done
for i in 20*svg
do
    if [ `echo $i|grep -c facebook` = 0 -a `echo $i|grep -c linkedin` = 0 -a `echo $i|grep -c instagram` = 0 ]
    then
    	inkscape -f $i --export-pdf `basename $i svg`pdf
	fi
done
for i in 20*facebook_and_website.svg 20*instagram.svg 20*linkedin.svg
do
	inkscape -f $i -e `basename $i svg`png

done
for i in 20*instagram.png
do
	convert $i `basename $i png`jpg

done
