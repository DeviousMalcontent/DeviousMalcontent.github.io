@echo off
echo Blank
ImageMagick-7.0.11-12-portable-Q16-x86\magick -size 5x5 xc:#000000 ..\images\blank.png 

echo Banner
ImageMagick-7.0.11-12-portable-Q16-x86\magick -size 770x200 -define gradient:angle=74 gradient:"#D8DAEF-#0627E6" ..\images\banner.png 
ImageMagick-7.0.11-12-portable-Q16-x86\convert ..\images\banner.png -bordercolor black -border 3 ..\images\banner.png
REM As much as I like using ImageMagick to manipulate simple graphics from the command line its documentation fucking sucks.
ImageMagick-7.0.11-12-portable-Q16-x86\convert -font arial -fill black -pointsize 60 -gravity West -draw "text 20,-55 'Mark\'s GitHub Website'" ..\images\banner.png ..\images\banner.png
REM The above line is not required if you can get the unmirrored text to display correctly, but good luck trying to figure out what the values are to set its correct position and alignment. 
ImageMagick-7.0.11-12-portable-Q16-x86\convert -size 776x206 xc:"rgba(0,0,0,0)" -font arial -pointsize 60 -fill "#000000" -annotate 0x125+20+75 "Mark's GitHub Website" -blur 0x2 ..\images\banner-BlurtextTemp.png
ImageMagick-7.0.11-12-portable-Q16-x86\convert ..\images\banner.png ..\images\banner-BlurtextTemp.png -composite ..\images\banner.png
del ..\images\banner-BlurtextTemp.png /Q
Rem ImageMagick-7.0.11-12-portable-Q16-x86\convert -append ..\images\banner-BlurtextTemp.png ..\images\banner.png 
Rem size: 776x206

echo Models
ImageMagick-7.0.11-12-portable-Q16-x86\magick -size 766x72 -define gradient:angle=0 gradient:"#788BFE-#1639FE" ..\images\models.png 
ImageMagick-7.0.11-12-portable-Q16-x86\convert ..\images\models.png ( +clone  -alpha extract -draw "fill black polygon 0,0 0,10 10,0 fill white circle 10,10 10,0" ( +clone -flip ) -compose Multiply -composite ( +clone -flop ) -compose Multiply -composite ) -alpha off -compose CopyOpacity -composite  ..\images\models.png
ImageMagick-7.0.11-12-portable-Q16-x86\convert -font arial -fill black -pointsize 60 -gravity West -draw "text 24,-4 '* Models'" ..\images\models.png ..\images\models.png

echo Gallery
ImageMagick-7.0.11-12-portable-Q16-x86\magick -size 766x72 -define gradient:angle=0 gradient:"#788BFE-#1639FE" ..\images\gallery.png 
ImageMagick-7.0.11-12-portable-Q16-x86\convert ..\images\gallery.png ( +clone  -alpha extract -draw "fill black polygon 0,0 0,10 10,0 fill white circle 10,10 10,0" ( +clone -flip ) -compose Multiply -composite ( +clone -flop ) -compose Multiply -composite ) -alpha off -compose CopyOpacity -composite  ..\images\gallery.png
ImageMagick-7.0.11-12-portable-Q16-x86\convert -font arial -fill black -pointsize 60 -gravity West -draw "text 24,-4 '* Gallery'" ..\images\gallery.png ..\images\gallery.png

echo Graphics
ImageMagick-7.0.11-12-portable-Q16-x86\magick -size 766x72 -define gradient:angle=0 gradient:"#788BFE-#1639FE" ..\images\graphics.png 
ImageMagick-7.0.11-12-portable-Q16-x86\convert ..\images\graphics.png ( +clone  -alpha extract -draw "fill black polygon 0,0 0,10 10,0 fill white circle 10,10 10,0" ( +clone -flip ) -compose Multiply -composite ( +clone -flop ) -compose Multiply -composite ) -alpha off -compose CopyOpacity -composite  ..\images\graphics.png
ImageMagick-7.0.11-12-portable-Q16-x86\convert -font arial -fill black -pointsize 60 -gravity West -draw "text 24,-4 '* Graphics'" ..\images\graphics.png ..\images\graphics.png

echo HTML
ImageMagick-7.0.11-12-portable-Q16-x86\magick -size 766x72 -define gradient:angle=0 gradient:"#788BFE-#1639FE" ..\images\html.png 
ImageMagick-7.0.11-12-portable-Q16-x86\convert ..\images\html.png ( +clone  -alpha extract -draw "fill black polygon 0,0 0,10 10,0 fill white circle 10,10 10,0" ( +clone -flip ) -compose Multiply -composite ( +clone -flop ) -compose Multiply -composite ) -alpha off -compose CopyOpacity -composite  ..\images\html.png
ImageMagick-7.0.11-12-portable-Q16-x86\convert -font arial -fill black -pointsize 50 -gravity West -draw "text 24,-4 '* HyperText Markup Language'" ..\images\html.png ..\images\html.png

echo Octal
ImageMagick-7.0.11-12-portable-Q16-x86\magick -size 766x72 -define gradient:angle=0 gradient:"#788BFE-#1639FE" ..\images\octal.png 
ImageMagick-7.0.11-12-portable-Q16-x86\convert ..\images\octal.png ( +clone  -alpha extract -draw "fill black polygon 0,0 0,10 10,0 fill white circle 10,10 10,0" ( +clone -flip ) -compose Multiply -composite ( +clone -flop ) -compose Multiply -composite ) -alpha off -compose CopyOpacity -composite  ..\images\octal.png
ImageMagick-7.0.11-12-portable-Q16-x86\convert -font arial -fill black -pointsize 50 -gravity West -draw "text 24,-4 '* Octal Numbering System'" ..\images\octal.png ..\images\octal.png

echo Hexadecimal
ImageMagick-7.0.11-12-portable-Q16-x86\magick -size 766x72 -define gradient:angle=0 gradient:"#788BFE-#1639FE" ..\images\hex.png 
ImageMagick-7.0.11-12-portable-Q16-x86\convert ..\images\hex.png ( +clone  -alpha extract -draw "fill black polygon 0,0 0,10 10,0 fill white circle 10,10 10,0" ( +clone -flip ) -compose Multiply -composite ( +clone -flop ) -compose Multiply -composite ) -alpha off -compose CopyOpacity -composite  ..\images\hex.png
ImageMagick-7.0.11-12-portable-Q16-x86\convert -font arial -fill black -pointsize 45 -gravity West -draw "text 24,-4 '* Hexadecimal Numbering System'" ..\images\hex.png ..\images\hex.png

echo Binary
ImageMagick-7.0.11-12-portable-Q16-x86\magick -size 766x72 -define gradient:angle=0 gradient:"#788BFE-#1639FE" ..\images\binary.png 
ImageMagick-7.0.11-12-portable-Q16-x86\convert ..\images\binary.png ( +clone  -alpha extract -draw "fill black polygon 0,0 0,10 10,0 fill white circle 10,10 10,0" ( +clone -flip ) -compose Multiply -composite ( +clone -flop ) -compose Multiply -composite ) -alpha off -compose CopyOpacity -composite  ..\images\binary.png
ImageMagick-7.0.11-12-portable-Q16-x86\convert -font arial -fill black -pointsize 50 -gravity West -draw "text 24,-4 '* Binary Numbering System'" ..\images\binary.png ..\images\binary.png

echo Decimal
ImageMagick-7.0.11-12-portable-Q16-x86\magick -size 766x72 -define gradient:angle=0 gradient:"#788BFE-#1639FE" ..\images\decimal.png 
ImageMagick-7.0.11-12-portable-Q16-x86\convert ..\images\decimal.png ( +clone  -alpha extract -draw "fill black polygon 0,0 0,10 10,0 fill white circle 10,10 10,0" ( +clone -flip ) -compose Multiply -composite ( +clone -flop ) -compose Multiply -composite ) -alpha off -compose CopyOpacity -composite  ..\images\decimal.png
ImageMagick-7.0.11-12-portable-Q16-x86\convert -font arial -fill black -pointsize 50 -gravity West -draw "text 24,-4 '* Decimal Numbering System'" ..\images\decimal.png ..\images\decimal.png

echo Chmod
ImageMagick-7.0.11-12-portable-Q16-x86\magick -size 766x72 -define gradient:angle=0 gradient:"#788BFE-#1639FE" ..\images\chmod.png 
ImageMagick-7.0.11-12-portable-Q16-x86\convert ..\images\chmod.png ( +clone  -alpha extract -draw "fill black polygon 0,0 0,10 10,0 fill white circle 10,10 10,0" ( +clone -flip ) -compose Multiply -composite ( +clone -flop ) -compose Multiply -composite ) -alpha off -compose CopyOpacity -composite  ..\images\chmod.png
ImageMagick-7.0.11-12-portable-Q16-x86\convert -font arial -fill black -pointsize 50 -gravity West -draw "text 24,-4 '* chmod - Change mode'" ..\images\chmod.png ..\images\chmod.png

echo ASCII
ImageMagick-7.0.11-12-portable-Q16-x86\magick -size 766x72 -define gradient:angle=0 gradient:"#788BFE-#1639FE" ..\images\ascii.png 
ImageMagick-7.0.11-12-portable-Q16-x86\convert ..\images\ascii.png ( +clone  -alpha extract -draw "fill black polygon 0,0 0,10 10,0 fill white circle 10,10 10,0" ( +clone -flip ) -compose Multiply -composite ( +clone -flop ) -compose Multiply -composite ) -alpha off -compose CopyOpacity -composite  ..\images\ascii.png
ImageMagick-7.0.11-12-portable-Q16-x86\convert -font arial -fill black -pointsize 50 -gravity West -draw "text 24,-4 '* ASCII'" ..\images\ascii.png ..\images\ascii.png

echo Phonetic Alphabet
ImageMagick-7.0.11-12-portable-Q16-x86\magick -size 766x72 -define gradient:angle=0 gradient:"#788BFE-#1639FE" ..\images\phonetic.png 
ImageMagick-7.0.11-12-portable-Q16-x86\convert ..\images\phonetic.png ( +clone  -alpha extract -draw "fill black polygon 0,0 0,10 10,0 fill white circle 10,10 10,0" ( +clone -flip ) -compose Multiply -composite ( +clone -flop ) -compose Multiply -composite ) -alpha off -compose CopyOpacity -composite  ..\images\phonetic.png
ImageMagick-7.0.11-12-portable-Q16-x86\convert -font arial -fill black -pointsize 50 -gravity West -draw "text 24,-4 '* The Phonetic Alphabet'" ..\images\phonetic.png ..\images\phonetic.png

echo Windows
ImageMagick-7.0.11-12-portable-Q16-x86\magick -size 766x72 -define gradient:angle=0 gradient:"#788BFE-#1639FE" ..\images\windows.png 
ImageMagick-7.0.11-12-portable-Q16-x86\convert ..\images\windows.png ( +clone  -alpha extract -draw "fill black polygon 0,0 0,10 10,0 fill white circle 10,10 10,0" ( +clone -flip ) -compose Multiply -composite ( +clone -flop ) -compose Multiply -composite ) -alpha off -compose CopyOpacity -composite  ..\images\windows.png
ImageMagick-7.0.11-12-portable-Q16-x86\convert -font arial -fill black -pointsize 50 -gravity West -draw "text 24,-4 '* Windows Operating System'" ..\images\windows.png ..\images\windows.png
pause
