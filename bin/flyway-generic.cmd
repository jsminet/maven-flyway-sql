@echo off
REM set JAVA_HOME=C:/PATH/TO_JDK
set MVNW_VERBOSE=true
set MAVEN_BATCH_ECHO=off

IF [%1] EQU [] goto usage

set ACTION=%~1
CD /d "%~dp0.."

CALL mvnw.cmd flyway:%ACTION% || goto :error

echo Liquibase '%ACTION%' done successfully !
cd bin
exit /b 0


:usage
echo ----------------------------------- ^
This script need a parameters -> action  ^
---------------------------------------- ^
action must be in:^
Migrate, Clean, Info, Validate, Undo, Baseline and Repair

:error
echo *** ERROR during liquibase '%ACTION%' ***
exit /b 1