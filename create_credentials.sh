#!/bin/bash

PASS=`openssl rand -hex 20`
SALT=`openssl rand -hex 5`

touch $1
chmod 755 $1

#TODO only echo these lines if $CREDENTIAL_FILENAME is empty

echo "export GIT_ENCRYPT_PASS_FIXED=$PASS" >> $1
echo "export GIT_ENCRYPT_SALT_FIXED=$SALT" >> $1

cat $1
