@echo off
echo Banner
ImageMagick-7.0.11-12-portable-Q16-x86\magick -size 770x200 -define gradient:angle=74 gradient:"#D8DAEF-#0627E6" ..\images\banner.png 
ImageMagick-7.0.11-12-portable-Q16-x86\convert ..\images\banner.png -bordercolor black -border 3 ..\images\banner.png
REM As much as I like using ImageMagick to manipulate simple graphics from the command line its documentation fucking sucks.
ImageMagick-7.0.11-12-portable-Q16-x86\convert -font arial -fill black -pointsize 60 -gravity West -draw "text 20,-55 'Mark\'s GitHub Website'" ..\images\banner.png ..\images\banner.png
REM The above line is not required if you can get the unmirrored text to display correctly, but good luck trying to figure out what the values are to set its correct position and alignment. 
ImageMagick-7.0.11-12-portable-Q16-x86\convert -size 776x206 xc:"rgba(0,0,0,0)" -font arial -pointsize 60 -fill "#000000" -annotate 0x125+20+75 "Mark's GitHub Website" -blur 0x2 ..\images\banner-BlurtextTemp.png
ImageMagick-7.0.11-12-portable-Q16-x86\convert ..\images\banner.png ..\images\banner-BlurtextTemp.png -composite ..\images\banner.png
Rem ImageMagick-7.0.11-12-portable-Q16-x86\convert -append ..\images\banner-BlurtextTemp.png ..\images\banner.png 
REM ImageMagick-7.0.11-12-portable-Q16-x86\convert ..\images\banner.png -size 0x0 xc:"rgba(0,0,0,0)" -font arial -pointsize 60 -fill "#000000" -annotate 0x125+20+70 "Mark's GitHub Website" ( -size 775x206 gradient:black -append  ) -compose Blur -set option:compose:args 20x5+45 -composite ( -size 775x0 xc:"rgba(0,0,0,0)" -fill "#211717" -annotate 0x0+20+59 "Mark's GitHub User Page" ) +swap -append ..\images\banner.png
rem ImageMagick-7.0.11-12-portable-Q16-x86\convert ..\images\banner.png -size 776x206 xc:"rgba(0,0,0,0)" -font arial -pointsize 60 -fill "#000000" -annotate 0x125+20+0 "Mark's GitHub User Page" ( -size 776x206 gradient:black -append ) -compose Blur -set option:compose:args 20x5+45 -composite ( -size 776x0 xc:"rgba(0,0,0,0)" -fill "#211717" -annotate 0x0+20+59 "Mark's GitHub User Page" ) +swap -append ..\images\banner.png


Rem size: 776x206

echo Models
ImageMagick-7.0.11-12-portable-Q16-x86\magick -size 766x72 -define gradient:angle=0 gradient:"#788BFE-#1639FE" ..\images\models.png 
ImageMagick-7.0.11-12-portable-Q16-x86\convert ..\images\models.png ( +clone  -alpha extract -draw "fill black polygon 0,0 0,10 10,0 fill white circle 10,10 10,0" ( +clone -flip ) -compose Multiply -composite ( +clone -flop ) -compose Multiply -composite ) -alpha off -compose CopyOpacity -composite  ..\images\models.png
ImageMagick-7.0.11-12-portable-Q16-x86\convert -font arial -fill black -pointsize 60 -gravity West -draw "text 24,-4 '* Models'" ..\images\models.png ..\images\models.png

echo Gallery
ImageMagick-7.0.11-12-portable-Q16-x86\magick -size 766x72 -define gradient:angle=0 gradient:"#788BFE-#1639FE" ..\images\gallery.png 
ImageMagick-7.0.11-12-portable-Q16-x86\convert ..\images\gallery.png ( +clone  -alpha extract -draw "fill black polygon 0,0 0,10 10,0 fill white circle 10,10 10,0" ( +clone -flip ) -compose Multiply -composite ( +clone -flop ) -compose Multiply -composite ) -alpha off -compose CopyOpacity -composite  ..\images\gallery.png
ImageMagick-7.0.11-12-portable-Q16-x86\convert -font arial -fill black -pointsize 60 -gravity West -draw "text 24,-4 '* Gallery'" ..\images\gallery.png ..\images\gallery.png
pause
