:: This works but is sloppy...
chcp 437
@echo off

:again 
   set /p answer="Your choice? (Y/N) : "
   if /i "%answer:~,1%" EQU "Y" call :handle_yes
   if /i "%answer:~,1%" EQU "N" call :handle_no

pause

:handle_yes
    echo "Hi from yes!"
    EXIT /B

:handle_no
    echo "Hi from no!"
    EXIT /B
