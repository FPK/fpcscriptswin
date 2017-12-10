set "cmd1=cd %DCOMMIT_REMOTE_GITDIR% && git rebase"
set "cmdall=%cmd1% %1"
plink %DCOMMIT_REMOTE% "%cmdall%"
if %ERRORLEVEL% neq 0 goto end
plink %DCOMMIT_REMOTE% "cd %DCOMMIT_REMOTE_GITDIR% && git svn rebase && git svn dcommit -n"
if %ERRORLEVEL% neq 0 goto end
plink %DCOMMIT_REMOTE% "cd %DCOMMIT_REMOTE_GITDIR% && git log -n 8 && echo Press key to continue && read -n1 -s"
if %ERRORLEVEL% neq 0 goto end
plink %DCOMMIT_REMOTE% "cd %DCOMMIT_REMOTE_GITDIR% && git svn dcommit"
if %ERRORLEVEL% neq 0 goto end
cd %MYFPCDIR%\%MYFPC%
"%GITBINDIR%\git" fetch -a
if %ERRORLEVEL% neq 0 goto end
"%GITBINDIR%\git" checkout -B master remotes/origin/master --
if %ERRORLEVEL% neq 0 goto end
"%GITBINDIR%\git" push origin --delete %1
:end
