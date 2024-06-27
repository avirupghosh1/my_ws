@echo off

if DEFINED DESTDIR (
  echo "Destdir.............%DESTDIR%"
  set DESTDIR_ARG="--root=%DESTDIR%"
)

cd "C:/Windows/System32/my_ws/src/turtlebot3_teleop"

if NOT EXIST "C:\Windows\System32\my_ws\install\lib/site-packages\" (
  mkdir "C:\Windows\System32\my_ws\install\lib/site-packages"
)

set "PYTHONPATH=C:\Windows\System32\my_ws\install\lib/site-packages;C:/Windows/System32/my_ws/build\lib/site-packages"
set "CATKIN_BINARY_DIR=C:/Windows/System32/my_ws/build"
for /f "usebackq tokens=*" %%a in ('C:\Windows\System32\my_ws\install') do (
  set _SETUPTOOLS_INSTALL_PATH=%%~pna
  set _SETUPTOOLS_INSTALL_ROOT=%%~da
)

"C:/opt/ros/melodic/x64/python.exe" ^
    "C:/Windows/System32/my_ws/src/turtlebot3_teleop\setup.py" ^
    build --build-base "C:/Windows/System32/my_ws/build/turtlebot3_teleop" ^
    install %DESTDIR_ARG%  ^
    --prefix="%_SETUPTOOLS_INSTALL_PATH%" ^
    --install-scripts="%_SETUPTOOLS_INSTALL_PATH%\bin" ^
    --root=%_SETUPTOOLS_INSTALL_ROOT%\
