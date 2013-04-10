IF NOT EXIST tools\MSBuildTasks\NUL (GOTO FETCH) ELSE GOTO EXIST

:FETCH
ECHO Fetching MSBuildTasks via NuGet

:: Set the working directory
CD tools

:: Fetch NuGet packages
..\src\.nuget\NuGet.exe install MSBuildTasks -x -o _temp
..\src\.nuget\NuGet.exe install MSBuild.Umbraco.Tasks -x -o _temp
 
:: Copy to target directory
XCOPY _temp\MSBuildTasks\tools\MSBuild.Community.Tasks.* MSBuildTasks /i /y /q
XCOPY _temp\MSBuild.Umbraco.Tasks\lib\MSBuild.Umbraco.Tasks.* MSBuildTasks /i /y /q
XCOPY _temp\SharpZipLib\lib\20\ICSharpCode.SharpZipLib.dll MSBuildTasks /i /y /q

:: Tidy up
RMDIR _temp /s /q
CD ..
GOTO END

:EXIST
ECHO MSBuildTasks already exist

:END
