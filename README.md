# Git Encrypt Scrips

These scripts set up a git repository to transparently encrypt the contents. A git filter is run to encrypt a file whenever it is staged, and to decrypt it whenever it is checked out. The result is that the files appear unencrypted locally, but are encrypted on the remote repository.

##1. Clone the repo into ~/.gitencrypt

Run `cd && git clone git@github.com:eliasbagley/gitencrypt.git && cd .gitencrypt` in the terminal

##2. Generate the encryption password

Run `./create_credentials.sh`

This creates a .credentials file in the current directory.
Say... That's a nice repo you have there. Shame if something were to happen to it.
Backup your .credentials file into your password manager of choice. <b>If you lose this file you will never be able to decrypt your git repository!</b>

##3. Setup your git repo to run the filters

Navigate to the git repository you want to encrypt.

Run `~/.gitencrypt/setup.sh`

This appends the filter config information into the .gitattributes files and the .git/config files.

## Setting up the repo in a directory or another machine

If you later clone this repo to a new location, you will have to repeat step 3. to setup the filters again, and run `git reset HEAD --hard` to force the smudge filter to decrypt the first time. After that you can use the git repo as normal.

If you clone the repo onto a new machine, you will need to repeat the instructions from step 1, <b> but instead of running `./create_credentials.sh`, you must copy your old .credentials file from the other machine where it is set up. </b>
