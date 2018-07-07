set "cmd1=cd %DCOMMIT_REMOTE_GITDIR% && git rebase"
set "cmdall=%cmd1% %1"
plink %DCOMMIT_REMOTE% "%cmdall%" || exit /b % %ERRORLEVEL%
plink %DCOMMIT_REMOTE% "cd %DCOMMIT_REMOTE_GITDIR% && git svn rebase && git svn dcommit -n" || exit /b % %ERRORLEVEL%
plink %DCOMMIT_REMOTE% "cd %DCOMMIT_REMOTE_GITDIR% && git log -n 8 && echo Press key to continue && read -n1 -s"  || exit /b % %ERRORLEVEL%
plink %DCOMMIT_REMOTE% "cd %DCOMMIT_REMOTE_GITDIR% && git svn dcommit"  || exit /b % %ERRORLEVEL%
cd %MYFPCDIR%\%MYFPC%
plink %DCOMMIT_REMOTE% "cd %DCOMMIT_REMOTE_GITDIR% && git svn rebase" || exit /b % %ERRORLEVEL%
"%GITBINDIR%\git" fetch -a  || exit /b % %ERRORLEVEL%
"%GITBINDIR%\git" checkout -B master remotes/origin/master -- || exit /b % %ERRORLEVEL%
"%GITBINDIR%\git" push origin --delete %1 || exit /b % %ERRORLEVEL%
"%GITBINDIR%\git" branch -D %1
"%GITBINDIR%\git" log HEAD -n 3
