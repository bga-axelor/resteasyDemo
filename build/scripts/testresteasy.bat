@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  testresteasy startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Add default JVM options here. You can also use JAVA_OPTS and TESTRESTEASY_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto init

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto init

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:init
@rem Get command-line arguments, handling Windows variants

if not "%OS%" == "Windows_NT" goto win9xME_args

:win9xME_args
@rem Slurp the command line arguments.
set CMD_LINE_ARGS=
set _SKIP=2

:win9xME_args_slurp
if "x%~1" == "x" goto execute

set CMD_LINE_ARGS=%*

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\testresteasy.jar;%APP_HOME%\lib\resteasy-servlet-initializer-3.1.2.Final.jar;%APP_HOME%\lib\resteasy-jaxrs-3.1.2.Final.jar;%APP_HOME%\lib\javax.ws.rs-api-2.0.1.jar;%APP_HOME%\lib\resteasy-jaxb-provider-3.1.2.Final.jar;%APP_HOME%\lib\activation-1.1.1.jar;%APP_HOME%\lib\httpclient-4.5.2.jar;%APP_HOME%\lib\commons-io-2.5.jar;%APP_HOME%\lib\jcip-annotations-1.0.jar;%APP_HOME%\lib\jaxb-impl-2.2.7.jar;%APP_HOME%\lib\jboss-logging-3.3.0.Final.jar;%APP_HOME%\lib\jboss-jaxrs-api_2.0_spec-1.0.1.Beta1.jar;%APP_HOME%\lib\jaxb-core-2.2.7.jar;%APP_HOME%\lib\FastInfoset-1.2.12.jar;%APP_HOME%\lib\jaxb-api-2.2.7.jar;%APP_HOME%\lib\istack-commons-runtime-2.16.jar;%APP_HOME%\lib\jsr173_api-1.0.jar;%APP_HOME%\lib\resteasy-jaxrs-services-3.1.2.Final.jar;%APP_HOME%\lib\jboss-annotations-api_1.2_spec-1.0.0.Final.jar;%APP_HOME%\lib\httpcore-4.4.4.jar;%APP_HOME%\lib\commons-logging-1.2.jar;%APP_HOME%\lib\commons-codec-1.9.jar

@rem Execute testresteasy
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %TESTRESTEASY_OPTS%  -classpath "%CLASSPATH%" com.axelor.resteasy.controller.ArticleApplication %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable TESTRESTEASY_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%TESTRESTEASY_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
