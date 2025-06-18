# Doel - Gender bepalen op basis van de naam
# https://api.genderize.io/?name=luc
Clear-Host

$naam = Read-Host -Prompt "Wat is je naam?"

$data = Invoke-WebRequest -Uri "https://api.genderize.io/?name=$naam"
$json = $data.Content | ConvertFrom-Json
Write-Host $json.name
if ($json.gender -eq "male"){
    Write-Host $json.gender -ForegroundColor Blue
}
if ($json.gender -eq "female"){
    Write-Host $json.gender -ForegroundColor Magenta
}
Write-Host $json.gender
Write-Host $json.probability
