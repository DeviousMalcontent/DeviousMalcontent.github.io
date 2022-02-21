@echo off
echo Models
ImageMagick-7.0.11-12-portable-Q16-x86\magick -size 766x72 -define gradient:angle=0 gradient:"#788BFE-#1639FE" ..\images\models.png 
ImageMagick-7.0.11-12-portable-Q16-x86\convert ..\images\models.png ( +clone  -alpha extract -draw "fill black polygon 0,0 0,10 10,0 fill white circle 10,10 10,0" ( +clone -flip ) -compose Multiply -composite ( +clone -flop ) -compose Multiply -composite ) -alpha off -compose CopyOpacity -composite  ..\images\models.png
ImageMagick-7.0.11-12-portable-Q16-x86\convert -font arial -fill black -pointsize 60 -gravity West -draw "text 24,-4 '* Models'" ..\images\models.png ..\images\models.png

echo Gallery
ImageMagick-7.0.11-12-portable-Q16-x86\magick -size 766x72 -define gradient:angle=0 gradient:"#788BFE-#1639FE" ..\images\gallery.png 
ImageMagick-7.0.11-12-portable-Q16-x86\convert ..\images\gallery.png ( +clone  -alpha extract -draw "fill black polygon 0,0 0,10 10,0 fill white circle 10,10 10,0" ( +clone -flip ) -compose Multiply -composite ( +clone -flop ) -compose Multiply -composite ) -alpha off -compose CopyOpacity -composite  ..\images\gallery.png
ImageMagick-7.0.11-12-portable-Q16-x86\convert -font arial -fill black -pointsize 60 -gravity West -draw "text 24,-4 '* Gallery'" ..\images\gallery.png ..\images\gallery.png
pause
