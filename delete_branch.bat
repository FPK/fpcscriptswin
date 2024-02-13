echo Going to delete branch %1
"%GITBINDIR%\git" push %PERSONAL_REMOTE% --delete %1
"%GITBINDIR%\git" push %GITLAB_REMOTE% --delete %1
"%GITBINDIR%\git" branch -D %1
