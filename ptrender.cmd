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


@set ptrenderPath=Z:\ptrender
@set runFolderPath=Z:\ptfiles
@set runFolderPath=Z:\ptsample
@set runFolderPath=%1%

node %ptrenderPath%\render.js %runFolderPath%

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
