################################################
# This Creates New Tagged Test Mp3s
################################################
#################How to use#####################
# 1. Copy this shell scipt to an empty folder
# 2. Excute
# or
# Copy The code to the termenel (recomended)
#-----------------------------------------------
##################Raed Marji####################
#################raed@jogeeks.com####################
#-----------------------------------------------

count="0"
filename = "change_this_to_your_file_name"
for i in {1..10} #you can change the number of files created by changing 10 to any number u want
do
   touch $filename$count.mp3 # creates the file in the format of new0.mp3, new1.mp3 etc,,,
   id3tag -s songname$count new$count.mp3 # this tags the song name or title
   id3tag -a artistname$count new$count.mp3 # this tags the artist name 
   id3tag -A albumname$count new$count.mp3 # this tags the album name
   count=$(( $count + 1 )) # increment the count by one to ensure uniqeness 
done
