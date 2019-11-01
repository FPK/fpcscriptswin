set BRANCH=%DATE:~6,4%_%DATE:~3,2%_%DATE:~0,2%__%TIME:~0,2%_%TIME:~3,2%_%TIME:~6,2%
set BRANCH=%BRANCH: =0%
echo Going to create branch %BRANCH% || exit /b %ERRORLEVEL%
"%GITBINDIR%\git" branch %BRANCH% || exit /b %ERRORLEVEL%
"%GITBINDIR%\git" checkout %BRANCH% || exit /b %ERRORLEVEL%