setlocal enableextensions enabledelayedexpansion
@echo.
@echo.
@echo ###################################################
@echo #                                                 #
@echo #                 START  PROCESS                  #
@echo #                                                 #
@echo ###################################################
@echo.
@echo.
@echo.


@set ptrenderPath=D:\My_git\ptrender
@set runFolderPath=Z:\ptfiles
@set runFolderPath=Z:\ptsample
rem @set runFolderPath=G:\ptfiles
rem @set runFolderPath=%1%


@mkdir %runFolderPath%
@cd %runFolderPath%
@mkdir %runFolderPath%\back
@mkdir %runFolderPath%\front
@mkdir %runFolderPath%\out
cd %runFolderPath%

d:
cd %ptrenderPath%
node %ptrenderPath%\render.js

@echo.
@echo.
@echo ###################################################
@echo #                                                 #
@echo #                  END PROCESS                    #
@echo #                                                 #
@echo ###################################################
@echo.
@echo.
@echo.
cmd /k
