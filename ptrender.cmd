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
