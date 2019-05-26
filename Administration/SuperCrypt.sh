#!/bin/bash

echo "Welcome to SuperCrypt!"
echo "This is a shell script to Encrypt/Decrypt your files."
newKey="MakeNewKey UseOldKey"
cryptChoice="Encrypt Decrypt"

select option in $newKey; do

    if [ $REPLY = 1 ];
then
    sudo rngd -r /dev/urandom
    gpg --full-gen-key
else
    break;
fi

done

echo "Enter your Email: "
read email;

select option in $cryptChoice; do

    if [ $REPLY = 1 ];
then
    echo "You have selected encryption."
    echo "Please enter the file name: "
    read file;
    gpg -r $email -e $file
    shred -u $file;
    echo "Your file has been encrypted!"
    echo "Select an option again."
else
    echo "You have selected decryption."
    echo "Please enter the gpg filename to decrypt: "
    read file2;
    echo "Please enter the name of new file: "
    read file3;
    gpg -d  $file2 > $file3
    echo "The file has been Decrypted."
    echo "Select an option again."
fi

done
