if "%~1"=="" (
  for /f %%i in ('git rev-parse --abbrev-ref HEAD') do set CURR_BRANCH=%%i
) else (
  set CURR_BRANCH=%1
)

rem push to remote
"%GITBINDIR%\git" push -u origin %CURR_BRANCH%
rem check if everything has been successfully pushed
"%GITBINDIR%\git" merge-base --is-ancestor @{u} %CURR_BRANCH%

set "cmd1=cd %DCOMMIT_REMOTE_GITDIR% && git rebase"
set "cmdall=%cmd1% %CURR_BRANCH%"
plink -batch %DCOMMIT_REMOTE% "%cmdall%" || exit /b % %ERRORLEVEL%
plink -batch %DCOMMIT_REMOTE% "cd %DCOMMIT_REMOTE_GITDIR% && git svn rebase && git svn dcommit -n" || exit /b % %ERRORLEVEL%
plink -batch %DCOMMIT_REMOTE% "cd %DCOMMIT_REMOTE_GITDIR% && git log -n 8 && echo Press key to continue && read -n1 -s"  || exit /b % %ERRORLEVEL%
plink -batch %DCOMMIT_REMOTE% "cd %DCOMMIT_REMOTE_GITDIR% && git svn dcommit"  || exit /b % %ERRORLEVEL%
cd %MYFPCDIR%\%MYFPC%
plink -batch %DCOMMIT_REMOTE% "cd %DCOMMIT_REMOTE_GITDIR% && git svn rebase" || exit /b % %ERRORLEVEL%
"%GITBINDIR%\git" fetch -a  || exit /b % %ERRORLEVEL%
"%GITBINDIR%\git" checkout -B master remotes/origin/master -- || exit /b % %ERRORLEVEL%
"%GITBINDIR%\git" push origin --delete %CURR_BRANCH% || exit /b % %ERRORLEVEL%
"%GITBINDIR%\git" branch -D %CURR_BRANCH%
"%GITBINDIR%\git" log HEAD -n 3
