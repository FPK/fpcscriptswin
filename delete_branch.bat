echo Going to delete branch %BRANCH% || exit /b %ERRORLEVEL%
"%GITBINDIR%\git" push git.florianklaempfl.de --delete %1 || exit /b % %ERRORLEVEL%
"%GITBINDIR%\git" push gitlab.com/FPK2 --delete %1
"%GITBINDIR%\git" branch -D %1
