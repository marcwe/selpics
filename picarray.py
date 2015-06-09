#!/usr/bin/python
from sys import argv 
# from sys import re
script, flist, thumbsize, widthnum = argv

print "script is: ", script
print "file list is: ", flist
print "thumb size is: ", thumbsize
print "row width is: ", widthnum 

outfile = thumbsize + ".html"
infile = flist
imgsrcpre = '"><img src="' + thumbsize + '/'
rowwidth = int(widthnum)
# f = open('workfile1', 'w')
f = open(outfile, 'w')
ifile = open(infile, 'r')
#   not needed print ifile.read()

myList = [q for q in ifile.readlines()]


# myList=['GEO_7918.jpg' , 'GEO_7920.jpg' , 'GEO_7921.jpg' , 'GEO_7923.jpg' , 'GEO_7926.jpg' , 'GEO_7928.jpg' , 'GEO_7929.jpg']

## p = re.compile( './')


i = 0
while i < len(myList):
    print myList[i]
##   p.sub( '', myList[i])
    
    fil = myList[i]
    f.write ('<td><a href="full/')
    f.write (fil)
#    f.write ('"><img src="thumb15/')
    f.write (imgsrcpre)
    f.write (fil)
    f.write ('" alt="')
    f.write (fil)
    f.write ('" /></a></td>')
    f.write ('\n')
#    if (i+1)%3==0: f.write ('</tr><tr>\n')
    if (i+1)%rowwidth==0: f.write ('</tr><tr>\n')
    i = i + 1
f.closed
ifile.closed
