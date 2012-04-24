@echo off & setlocal enableextensions

cd src

set repo="%APPDATA%\MarkPad\Packages"

echo Creating local repository
mkdir %repo%

echo Clearing existing packages
del Example.*.nupkg
del %repo%\Example.*.nupkg

echo Packing example extension
.nuget\nuget pack Extensions\Example\Example.csproj

echo Publishing to local repository
copy Example.*.nupkg %repo%

cd ..
