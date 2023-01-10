param (
    [string]$foldername = "default",
    [string]$filename = "default",
    [int]$number = 1
)

if (Test-Path -Path $foldername -PathType Container) {
    Write-Host "$foldername directory already exists."
}
else {
    New-Item -Path $foldername -ItemType Directory
    Write-Host "$foldername directory was created"
}

for ($i = 0; $i -lt $number; $i++) {
    New-Item -Path $foldername/$i$filename -ItemType File
}
