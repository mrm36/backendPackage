# Package Script for BackEnd 
# Version 1.0

# Set variable to the current date
TIME=`date +%b-%d-%y`

# Sets the directory to be copied to the temp folder
SRCDIR=/home/matt/git/it490_backend_final/it490_backend_final

# Copies all files to a temp folder
cp -a $SRCDIR* /home/matt/Scripts/temp/

# Zips the folder with a time stamp	specficies what folder to zip
tar -czvf backend-v1-$TIME.tar.gz /home/matt/Scripts/temp/it490_backend_final/

# Simply lists all the files/folder that contain 'backend-'
ls | grep backend-v

# Removes the directory from temp after it has been zipped
rm -r /home/matt/Scripts/temp/it490_backend_final/

echo Success



