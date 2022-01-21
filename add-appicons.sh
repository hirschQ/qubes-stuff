##############################################################################################################################
############### make qubes app's use their own app-icon instead of qubes default locks########################################
############## scripting noob on keyboard ####################################################################################
############ may not efficient, but working anyway :D ########################################################################
##############################################################################################################################
#!/bin/sh
echo '>>>>> which app icon do you want to add? >>>>>>'
echo '-- here is your list-- '
echo ' '

sudo ls -1 /usr/share/applications | sed -e 's/\.desktop$//'


echo ' '
echo ' '
echo ' >>>>type your apps exact name like listed(!) and press enter>>>> '

read app 

iconname=`grep Icon= /usr/share/applications/$app.desktop | cut -d "=" -f2`
echo "find best icon of $iconname to convert>>>>"

besticon=`find /usr/share/icons/hicolor/ -name $iconname.png -printf "%P\n" | cut -f1-1 -d "/" |sort -nr |head -n 1`

echo "started converting from size $besticon"

convert /usr/share/icons/hicolor/$besticon/apps/$iconname.png -resize 16x16 /usr/share/icons/hicolor/16x16/apps/$iconname.png
convert /usr/share/icons/hicolor/$besticon/apps/$iconname.png -resize 20x20 /usr/share/icons/hicolor/20x20/apps/$iconname.png
convert /usr/share/icons/hicolor/$besticon/apps/$iconname.png -resize 22x22 /usr/share/icons/hicolor/22x22/apps/$iconname.png
convert /usr/share/icons/hicolor/$besticon/apps/$iconname.png -resize 24x24 /usr/share/icons/hicolor/24x24/apps/$iconname.png
convert /usr/share/icons/hicolor/$besticon/apps/$iconname.png -resize 32x32 /usr/share/icons/hicolor/32x32/apps/$iconname.png
convert /usr/share/icons/hicolor/$besticon/apps/$iconname.png -resize 36x36 /usr/share/icons/hicolor/36x36/apps/$iconname.png
convert /usr/share/icons/hicolor/$besticon/apps/$iconname.png -resize 42x42 /usr/share/icons/hicolor/42x42/apps/$iconname.png
convert /usr/share/icons/hicolor/$besticon/apps/$iconname.png -resize 48x48 /usr/share/icons/hicolor/48x48/apps/$iconname.png
convert /usr/share/icons/hicolor/$besticon/apps/$iconname.png -resize 64x64 /usr/share/icons/hicolor/64x64/apps/$iconname.png
convert /usr/share/icons/hicolor/$besticon/apps/$iconname.png -resize 72x72 /usr/share/icons/hicolor/72x72/apps/$iconname.png
convert /usr/share/icons/hicolor/$besticon/apps/$iconname.png -resize 96x96 /usr/share/icons/hicolor/96x96/apps/$iconname.png
convert /usr/share/icons/hicolor/$besticon/apps/$iconname.png -resize 128x128 /usr/share/icons/hicolor/128x128/apps/$iconname.png
convert /usr/share/icons/hicolor/$besticon/apps/$iconname.png -resize 192x192 /usr/share/icons/hicolor/192x192/apps/$iconname.png
convert /usr/share/icons/hicolor/$besticon/apps/$iconname.png -resize 256x256 /usr/share/icons/hicolor/256x256/apps/$iconname.png
convert /usr/share/icons/hicolor/$besticon/apps/$iconname.png -resize 480x480 /usr/share/icons/hicolor/480x480/apps/$iconname.png
convert /usr/share/icons/hicolor/$besticon/apps/$iconname.png -resize 512x512 /usr/share/icons/hicolor/512x512/apps/$iconname.png
convert /usr/share/icons/hicolor/$besticon/apps/$iconname.png -resize 1024x1024 /usr/share/icons/hicolor/1024x1024/apps/$iconname.png



echo "mission completed :)"



