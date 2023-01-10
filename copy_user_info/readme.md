# Copy information about users
This project contains a script that writes information of all the local users in a computer to a CSV-file. The information includes local users's name, full name, `SID` and `lastlogon`. The filename is provided as a parameter by the user. 

If the a new CSV-file is created succesfully, an Information message will be added to the eventlog. Else, an Error message will be added to the eventlog. 

## Prerequisites 
Create a new source named "PowerShell Add-MyEvent" to the Evenlog to write the script's events:

```
New-EventLog –LogName Application –Source “PowerShell Add-MyEvent”
```

Eventlog can be viewed in Event Viewer -> Windows Logs -> Application. In "Actions" tab, select "Filter Current Log". There, select "Powershell Add-MyEvent" in "Event Sources" list and press "Ok".

## Running the script on Windows
Copy the script to the computer.

Navigate in the File Explorer to the folder where the script is located. Copy the address from the address bar.

Open the command prompt, type the following command and substitute the `C:\Users\example\Downloads` with the copied address.
```
cd "C:\Users\example\Downloads"
```

Alternitavely, right-click the File Explorer window and select `Open in Terminal`.

Substitute `foldername`, `filename`, `1` with desired parameters and run the script:
```
.\rename_files.ps1 foldername filename 1
```