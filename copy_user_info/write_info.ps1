param (
    [string]$filename = "info.csv"
)
$type="Information"

function Add-MyEvent ([string]$Type, [string]$Message) {
    if ($Type -eq "Error" -Or $Type -eq "Information") {  
        Write-EventLog -LogName "Application" -Source "PowerShell Add-MyEvent" -EventID 3000 -EntryType $Type -Message "$Message" -Category 1 -RawData 10,20
    }
    else {
        Write-Host "Type is invalid. Please try again."
    }
}

try {
    New-Item -Path $filename -ItemType File -ErrorAction Stop
    Get-LocalUser * | Select-Object Name, FullName, SID, LastLogon | Export-Csv -Path $filename -Delimiter ';'
}
catch {
    $type="Error"
}

Add-MyEvent -Type $type -Message "blank."