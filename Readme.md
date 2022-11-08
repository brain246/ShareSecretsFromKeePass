# Instructions

## Installation

1. Copy `ShareSecret.bat` and  `ShareSecret.ps1` into the same directory in which your KeePass database is located.
2. Edit `ShareSecret.ps1` : Set your name (Variable: $email_sig) and maybe change the message to your liking.
3. Open `KeePassTrigger.xml` -> select all -> copy
4. Open KeePass -> `Tools` -> `Triggers...` -> `Tools` -> `Paste Triggers From Clipboard`
5. Save the database -> restart KeePass

## How to use

You should now have a custom button at the top called 'Share'. 

If you click that button while having an entry selected, a secure password at onetimesecrets.com is created and an email will open with everything pre-filled except for the recipient. 