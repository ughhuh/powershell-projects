# Create files

This project contains a script that takes two parameters: `$foldername` and `$newname`. The script renames all files in the given folder. Files are renamed in the `newname_XXXX.ext` format, where `newname` refers to the new name specified for the files in `$newname` variable, `XXXX` to the file's number and `.ext` to file's original extension. Amount of zeroes can be modified on line 5 in the definition of `$zeroes` variable. 

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