Push-Location
cd build

$url = "https://www.nuget.org/api/v2/package/Microsoft.AspNetCore.SpaTemplates/0.9.2"
$output = "..\src\Microsoft.AspNetCore.SpaTemplates.nupkg"

Invoke-WebRequest -Uri $url -OutFile $output
Pop-Location