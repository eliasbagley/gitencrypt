# Git Encrypt Scrips

These scripts set up a git repository to transparently encrypt the contents. A git filter is run to encrypt a file whenever it is stated, and to decrypt it whenever it is checked out. The result is that the files appear unencrypted locally, but are encrypted on the remote repository.

#1. Clone repo into ~/.gitencrypt

#2. cd into ~/.gitencrypt

#3. Run ./create_credentials.sh

This creates a .credentials file in the current directory.
Say... That's a nice repo you have there. Shame if something were to happen to it...
Backup your .credentials file into your password manager of choice.

#4. Setup git to run the fitlers

Navigate to the git directory you want to encrypt.

Run `~/.gitencrypt/setup.sh` to setup the .gitattributes and .git/config filters to run the encrypt/decrypt scripts.

If you later clone this repo to a new location, you will have to repeat step 4. to setup the filters again, and run `git reset HEAD --hard` to force the smudge filter to decrypt the first time. After that you can use the git repo as normal.
