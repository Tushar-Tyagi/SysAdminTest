**Task 1** :
*22-05-2019*

**GPG**
*[GPG]: GNU Privacy Guard

* [This](https://www.youtube.com/watch?v=DMGIlj7u7Eo) video gave me the following insites and details:
    * ``` gpg --full-gen-key ```
    It creates .gnupg directory where it keeps everythin in. Prompts to ask the kind of key and size of keys. Default selection is RSA & RSA for keys.
    After that it asks for the validity of the key, identification and all.
    Now it asks for the **passphase**. This will be the key to decrypt the files, and hence must never be shared with someone else.
    There is some issue of entropy for large passphases and it takes a lot of time. Will look into it later.
    *Update : 27/05/2019* : Googling the issue resulted in following very easy solution on this [StackExchange](https://serverfault.com/questions/214605/gpg-does-not-have-enough-entropy) page:
    *The RNG Tool* : `sudo apt-get install rng-tools` to install the tool, and `sudo rngd -r /dev/urandom` before generating the keys.

    * ``` gpg -r <email> -e <filename> ```
    This command is used to encrypt a file. This will create a new <filename>.gpg file. This the the encrypted version.
    "r" option is for the recipient. Here we are encrypting for ourselves. So, we put self email.
    After that do `shred -u <filename>`  to safely delete the original file.

    * ```gpg -d  <filename.gpg> >> <filename> ```
    This command decrypts the file and put the contents in filename.
    Here -d is for decrypt.

So, after creating the key, we have 2 keys, private and public.
Saving the private key: `gpg --export-secret-keys -a "Your Name" > yourname.priv` , and put it in a safe place.
Saving the public key: `gpg --export-keys -a "Your Name" > yourname.pub` , and put it drive.

* Now I will start to work on making a shell script to automatically encrypt and decrypt files.
    Do `chmod u+x SuperCrypt.sh` to make the scriptfile executable.

*27/05/2019*
* Shell Script completed
To use the shell file:
    * Make scriptfile executable by `chmod u+x SuperCrypt.sh`
    * Follow the prompt.
    * **NOTE** : The file which needs to be encrypted/decrypted needs to be in the same folder.
    * *Possible Enhancements* : User should be able to select the folder for selecting and saving the files.

* The soultion for saving the data in case of hard drive crash is to update these .gpg files to a secure remote server on daily basis.

**Task 2** : To signup on AWS / Digitalocean / some other virtual server providing company and install
streisand, and then to SETUP YOUR OWN VIRTUAL PRIVATE NETWORK(VPN) according to the instructions
given on the streisand github page.

**Solution** :
* Current Status: DigitalOcean not accepting my card & waiting for AWS verification. :(.
