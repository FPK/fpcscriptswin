@echo off
git for-each-ref --sort=committerdate refs/remotes/fpc_fpk/ "--format=%%(HEAD) %%(color:yellow)%%(refname:short)%%(color:reset) - %%(color:red)%%(objectname:short)%%(color:reset) - %%(contents:subject) - %%(authorname) (%%(color:green)%%(committerdate:relative)%%(color:reset))"
