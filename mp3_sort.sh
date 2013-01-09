################################################
# This Sorts Files into Folders by Artist Name
################################################
#################How to use#####################
# 1. Copy this shell scipt to the mp3s folder
# 2. Excute
# or
# 1. Change the path in the script 
#-----------------------------------------------
##################Raed Marji####################
#################raed@jogeeks.com####################
#-----------------------------------------------

path="."
for song in *.mp3
do
	astring=$(id3info "$song" | grep -i performer)
	artist="${astring##*:}"
	mkdir -p "$path/$artist"
	cp $song "$path/$artist"
	echo $artist
done



