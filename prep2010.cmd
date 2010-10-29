@echo off

call "%~d0%~p0\common.cmd" %*
set GEN="Visual Studio 10"

:runcmake
pushd "%BUILDDIR%"
REM ** shift off the first 2 params so the rest goes to cmake
shift
shift

echo Building projects in %PROJDIR%

cmake -G %GEN% ""-DPROJECTS_DIR=%PROJDIR%"" %* "%FB_ROOT%"

popd
