----------------------------------intro----------------------------------
This is simply a rebuilt version of the Bilinear batch by Santikun.
https://github.com/Santikun/MGS1-Master-Collection-Bilinear-Patch.
all the work creating the method and initial batch file is all theirs.

This is an edited version that I feel is easier to use.


This script will install dotnet 2.2.0 during its runtime in order for one of the programs to function.

This script makes changes to the alldata.bin and alldata.psb.m files in the mgs1\windata folder, if you're using the second script and want the original files backed up please do so yourself, if you're using the first script this is done automatically and the backup folder is placed in mgs1\windata folder.

----------------------------------How to use----------------------------------


In the folder there will be three .bat files.

Option 1 autopatch.bat:
This one will detect the install location and just convert and replace the files for you, it will also backup the existing files in the game directory.
This will only work if you have the game purchased and installed through steam. If the path that shows up at the start of the script looks very wrong or doesn't show at all then theres option 2.

Option 2 converter.bat
This one will require a bit more effort.
basically you will need to copy the files to the main folder for the patcher before running this (where theres a file that says "files go here").
Then run the batch file and the rest is automated, when the program finishes there will be a folder called ConvertedFiles which is where the converted files will be, you just need to copy them back to the game folder (mgs1\windata) and overwrite.
!!!!!!!!!!OPTION 2 WILL NOT BACKUP THE ORIGINAL FILE SO YOU WILL NEED TO DO THAT YOURSELF!!!!!!!!!!

"find the game files for me.bat":
This is just a batch file that will open the folder where the files we are looking for are, if this works then option 1 should work fine.


----------------------------------storage space requirements----------------------------------


the script may require up to 30gb or more of space as the original file (depending on region) is around 8 or 9gb.
The first script makes a copy of the files and both scripts will unpack the files and then repack. So please be aware of the space requirements.

Once the script is done and you either don't make backups or delete the backups that the first script you will get all that space back, its just needed temporarily.