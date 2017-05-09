set "cmd1=cd %DCOMMIT_REMOTE_GITDIR% && git rebase"
set "cmdall=%cmd1% %1"
plink %DCOMMIT_REMOTE% "%cmdall%"
plink %DCOMMIT_REMOTE% "cd %DCOMMIT_REMOTE_GITDIR% && git svn rebase && git svn dcommit -n"
plink %DCOMMIT_REMOTE% "cd %DCOMMIT_REMOTE_GITDIR% && git log -n 8 && echo Press key to continue && read -n1 -s"
plink %DCOMMIT_REMOTE% "cd %DCOMMIT_REMOTE_GITDIR% && git svn dcommit"
"%GITBINDIR%\git" fetch -a
"%GITBINDIR%\git" checkout -B master remotes/origin/master --
