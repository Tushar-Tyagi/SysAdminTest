**Task 1**
*Date : 22-05-2019*

**GPG**  
*[GPG]: GNU Privacy Guard

* [This](https://www.youtube.com/watch?v=DMGIlj7u7Eo) video gave me the following insites and details:
    * ``` gpg --full-gen-key ```
    It creates .gnupg directory where it keeps everythin in. Prompts to ask the kind of key and size of keys. Default selection is RSA & RSA for keys.
    After that it asks for the validity of the key, identification and all.
    Now it asks for the **passphase**. This will be the key to decrypt the files, and hence must never be shared with someone else.

    * ``` gpg -r <email> -e <filename> ```
    This command is used to encrypt a file. This will create a new <filename>.gpg file. This the the encrypted version.
    "r" option is for the recipient. Here we are encrypting for ourselves. So, we put self email.
    After that do "shred -u <filename>" to safely delete the original file.

    * ```gpg -d  <filename.gpg> >> <filename> ```
    This fill decrypt the file and put the contents in filename.
    Here -d is for decrypt.

* Now I will start to work on making a shell script to automatically encrypt and decrypt files.
    ```chmod u+x SuperCrypt.sh``` to make the scriptfile executable.
