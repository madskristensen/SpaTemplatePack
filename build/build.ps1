$package = "Microsoft.AspNetCore.SpaTemplates"
$version = "0.9.3"

Push-Location
cd build

# Delete all existing .nupkg files
dir ..\src\*.nupkg | foreach {del $_}

$url = "https://www.nuget.org/api/v2/package/$package/$version"
$output = "..\src\$package.$version.nupkg"

Invoke-WebRequest -Uri $url -OutFile $output
Pop-Location