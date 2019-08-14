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

rem ПОТРІБНО --------------------------------------------
rem щоб вже були заінсталені:
rem 1) PTgui   - https://github.com/velmyshanovnyi/ptrender/wiki/PTgui-install
rem 2) NodeJS  - взяти тут: https://nodejs.org 
rem NodeJS: - після власне своєї інсталяції, NodeJS інсталить ще для всоєї роботи наспупне:
rem NodeJS: - Chocolatey 
rem NodeJS: - Python 2.7
rem NodeJS: - Microsoft VisualStudio2017Buildtools
rem NodeJS: - і ще деякі бібліотеки...
rem 
rem ######################################################################
rem в ярлику для запуска використовуємо наступні параметри
rem G:\ptrender\ptrender.cmd G:\ptrender G:\ptfiles
rem де %1% - папка де лежить програмний комплекс (робоча папка)
rem де %2% - папка де лежать файли
rem 
rem 
rem ######################################################################
rem 



@set ptrenderGitPath=D:\My_git\ptrender
@set ptrenderSrcPath=G:\ptrender
@set ptrenderSrcPath=%1%
@set ptrenderFolderPath=G:\ptfiles
@set ptrenderFolderPath=%2%



@echo ptrenderGitPath    = %ptrenderGitPath%
@echo ptrenderSrcPath    = %ptrenderSrcPath%
@echo ptrenderFolderPath = %ptrenderFolderPath%

@mkdir %ptrenderFolderPath%
@cd    %ptrenderFolderPath%
@dir
@mkdir back
@mkdir front
@mkdir out
cd     %ptrenderSrcPath%

node render.js %ptrenderFolderPath%

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
