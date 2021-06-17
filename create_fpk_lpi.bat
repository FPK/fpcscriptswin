FOR %%L IN (*.lpi) DO IF NOT EXIST %%~nL_fpk.lpi cp %%L %%~nL_fpk.lpi
del *_fpk_fpk.lpi
