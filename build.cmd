@ECHO OFF

:: Fetch the MSBuild tasks (via NuGet)
CALL .\tools\fetch-msbuild-tasks.cmd

:: Build the package zip
C:\WINDOWS\Microsoft.NET\Framework\v4.0.30319\msbuild.exe package\package.proj

:: PAUSE
@ECHO ON