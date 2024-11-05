# ZipCrack
This script attempts to brute-force the password of a password-protected zip file using a wordlist. It goes through each password in the provided wordlist and tries to unlock the zip file. If the correct password is found, it outputs the password and stops. If the password is not found in the wordlist, the script notifies the user.
Features

    Iterates through a list of potential passwords to unlock a zip file.
    Checks each password from a wordlist without extracting files, ensuring quick password testing.
    Stops and displays the password once the correct one is found.



## Usage
Usage

```bash

./crack.sh <zipfile> <wordlist>
```
    zipfile: Path to the password-protected zip file.
    wordlist: Path to a wordlist file containing potential passwords, with each password on a new line.

Example

```bash

./crack.sh secret.zip rockyou.txt
```
Script Output

    The script will print each attempted password.
    If the correct password is found, it will display: Password found: <password>.
    If no password in the wordlist is correct, it will display: Password not found in the wordlist.

Exit Codes

    0: Password found and zip unlocked successfully.
    1: Usage error, missing files, or password not found in the wordlist.

Notes

    Security: Use responsibly. This script is intended for educational purposes, security testing, or recovery of files for which you have permission to access.
    Performance: The speed of the script depends on the size of the wordlist and the system's processing power.


## Contributions
If you have any contribution you would like to add on you can issue a pull request to me or reach out on github account. 

## Members
