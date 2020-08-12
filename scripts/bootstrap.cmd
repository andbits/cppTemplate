@echo off

:DOES_PYTHON_EXIST
python -V | find /v "Python" >NUL 2>NUL && (goto :PYTHON_DOES_NOT_EXIST)
python -V | find "Python"    >NUL 2>NUL && (goto :PYTHON_DOES_EXIST)
goto :EOF

:PYTHON_DOES_NOT_EXIST
echo Python is not installed on your system.
echo Please install Python 3.7 or greater.
goto :EOF

:PYTHON_DOES_EXIST
:: This will retrieve Python 3.8.0 for example.
for /f "delims=" %%V in ('python -V') do @set ver=%%V
echo Found Python %ver%...

FOR /F "tokens=1,2,3,4 delims=. " %%i in ("%ver%") do (
  set py=%%i
  set maj=%%j
  set min=%%k
  set patch=%%l
)
if "%maj%" equ "3" (
  if "%min%" geq "7" (
     echo Python version is GOOD!
     goto :DoWork
  )
)
echo ERROR: Python should be updated to at least 3.7

goto :EOF

:DoWork
echo Setting up environment...
@call scripts\makeenv.cmd

:: Once done, exit the batch file -- skips executing the errorNoPython section
goto :EOF

:EOF
