:: Create a mods\ folder to add to .zip
mkdir mods

:: Go into folder with scripts
cd data\scripts

:: Add our global script(s) to a .dat file
dat2 a -t scripts Ouchie.dat gl_ouchie_ouch.int
:: dat2 a -t scripts Ouchie.dat gl_second.int
:: dat2 a -t scripts Ouchie.dat gl_third.int

:: Move created .dat into mods\ folder
move Ouchie.dat ..\..\mods

:: Go to the root folder
cd ..\..

:: Copy .ini into mods\ folder
copy Ouchie.ini mods\

:: Add mods\ folder to .zip
7z a Ouchie.zip mods\

:: Also zip up the whole data folder (along with the .ini)
7z a Ouchie_Loose.zip data\ Ouchie.ini

:: Wait a moment before deleting otherwise 7z might still be archiving...
timeout /t 1

:: Delete the mods\ folder
rmdir /S /Q mods