# Get File Information

This project contains a simlpe script that shows `Name`, `Length`, `LastWriteTime` properties of files with given extension in user's home folder. The extension (e.g., .txt or .csv) is given by the user as a parameter.

## Running the script on Windows
Copy the script to the computer.

Navigate in the File Explorer to the folder where the script is located. Copy the address from the address bar.

Open the command prompt, type the following command and substitute the `C:\Users\example\Downloads` with the copied address.
```
cd "C:\Users\example\Downloads"
```

Alternitavely, right-click the File Explorer window and select `Open in Terminal`.

Substitute `foldername` with the desired parameter and run the script:
```
.\get_file_info.ps1 .png
```