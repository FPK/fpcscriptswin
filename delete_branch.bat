echo Going to delete branch %1
"%GITBINDIR%\git" push git.florianklaempfl.de --delete %1
"%GITBINDIR%\git" push gitlab.com/FPK2 --delete %1
"%GITBINDIR%\git" branch -D %1
