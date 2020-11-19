set TIMESTR=%time:~0,2%%time:~3,2%%time:~6,2%
set BRANCH=%date:~06,4%%date:~3,2%%date:~0,2%%TIMESTR: =0%
echo Going to commit %BRANCH%"  || exit /b % %ERRORLEVEL%
"%GITBINDIR%\git" branch %BRANCH% || exit /b % %ERRORLEVEL%
"%GITBINDIR%\git" checkout %BRANCH% || exit /b % %ERRORLEVEL%
"%GITBINDIR%\git" commit -a %* || exit /b % %ERRORLEVEL%
"%GITBINDIR%\git" push origin %BRANCH% || exit /b % %ERRORLEVEL%
echo Press key to continue && read -n1 -s"  || exit /b % %ERRORLEVEL%
call remote_dcommit %BRANCH% || exit /b % %ERRORLEVEL%
