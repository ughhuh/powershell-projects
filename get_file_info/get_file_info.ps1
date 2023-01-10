function Get-FiluInfo2 {
    Param($x)
    Get-ChildItem $HOME/* -Include *$x | Format-Table Name, Length, LastWriteTime
}