param (
    [string]$foldername = "default",
    [string]$newname = "new_default"
)
$zeroes = '0000'

if (Test-Path -Path $foldername -PathType Container) {

    $files = Get-ChildItem -Path $foldername | Where-Object { $_.PsIsContainer -eq $false}
    $i = $files.Count
    $x = Read-Host "All $i files will be renamed with name $newname. Yes/No"
    
    if ($x -like 'Yes') {
        $files = Get-ChildItem $foldername | Where-Object { $_.PsIsContainer -eq $false }

        $i=0
        foreach ($file in $files) {
            Rename-Item -Path $foldername/$file -NewName ( $newname + "_" + ($i).ToString($zeroes) + $file.Extension )
            $i=$i+1
        }
    }
    else {
        Break
    }
}
else {
    Write-Host "$foldername directory doesn't exist"
    Break
}