@echo off
Title _File Organizer

:menu
cls
color 0d
set /p input=Place batch into current folder you wish to organize.This will organize all files into folders 0-9, and A-Z. Do you wish to proceed? Yes or no?
if %input%==Yes goto organize
if %input%==No goto end
if %input%==yes goto organize 
if %input%==no goto end

color 07
echo Invalid input please try again.
pause
goto menu


:organize 
color 0d
pause
echo press any key to proceed organizing files. 
pause
FOR %%G IN (0,1,2,3,4,5,6,7,9,8,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z) DO (md %%G)
For %%H IN (0,1,2,3,4,5,6,7,9,8,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z) DO (move %%H*.* %%H)

echo Your files are now organized into alphabetically individual folders.
pause

:end
exit