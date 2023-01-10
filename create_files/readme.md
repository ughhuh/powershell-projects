# Create files

This project contains a script that takes three parameters: `$foldername`, `$filename` and `$number`. The script creates a given folder if it doesn't exist, then creates as many new files as `$number` says to the folder. The number of files created and a list of their names are printed to the user.

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
.\create_files.ps1 foldername filename 1
```