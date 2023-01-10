for /F "usebackq delims=" %%A in (`git branch --list mr-*`) do git branch -D %%A
