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


@set ptrenderGitPath=D:\My_git\ptrender
@set ptrenderSrcPath=G:\ptrender
@set ptrenderRenderPath=D:\ptfiles
@set ptrenderRenderPath=G:\ptfiles
@set ptrenderRenderPath=%1%


@echo ptrenderGitPath    = %ptrenderGitPath%
@echo ptrenderSrcPath    = %ptrenderSrcPath%
@echo ptrenderRenderPath = %ptrenderRenderPath%

@mkdir %ptrenderRenderPath%
@cd    %ptrenderRenderPath%
@mkdir %ptrenderRenderPath%\back
@mkdir %ptrenderRenderPath%\front
@mkdir %ptrenderRenderPath%\out
@cd    %ptrenderSrcPath%

node render.js %ptrenderRenderPath%

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
