Getting Started
===============

2. Getting Set Up
-----------------

There are a number of things you need to do to get started developing for Kubuntu. This article is designed to get your computer set up so that you can start working with packages, and upload your packages to Kubuntu’s hosting platform, Launchpad. Here’s what we’ll cover:
Installing packaging-related software. This includes:

Kubuntu-specific packaging utilities

Encryption software so your work can be verified as being done by you
Additional encryption software so you can securely transfer files
Creating and configuring your account on Launchpad
Setting up your development environment to help you do local builds of packages, interact with other developers, and propose your changes on Launchpad.
Note
It is advisable to do packaging work using the current development version of Kubuntu. Doing so will allow you to test changes in the same environment where those changes will actually be applied and used.
Don’t worry though, you can use Testdrive or chroots to safely use the development release.

2.1. Install basic packaging software
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

There are a number of tools that will make your life as an Kubuntu developer much easier. You will encounter these tools later in this guide. To install most of the tools you will need run this command:
$ sudo apt-get install gnupg pbuilder ubuntu-dev-tools bzr-builddeb apt-file


Note: Since Kubuntu 11.10 “Oneiric Ocelot” (or if you have Backports enabled on a currently supported release), the following command will install the above and other tools which are quite common in Kubuntu development:
$ sudo apt-get install packaging-dev


This command will install the following software:

* gnupg – GNU Privacy Guard contains tools you will need to create a cryptographic key with which you will sign files you want to upload to Launchpad.
* pbuilder – a tool to do reproducible builds of a package in a clean and isolated environment.
* ubuntu-dev-tools (and devscripts, a direct dependency) – a collection of tools that make many packaging tasks easier.
* bzr-builddeb (and bzr, a dependency) – distributed version control with Bazaar, a new way of working with packages for Kubuntu that will make it easy for many developers to collaborate and work on the same code while keeping it trivial to merge each other’s work.
* apt-file provides an easy way to find the binary package that contains a given file.

2.1.1. Create your GPG key
~~~~~~~~~~~~~~~~~~~~~~~~~~

GPG stands for GNU Privacy Guard and it implements the OpenPGP standard which allows you to sign and encrypt messages and files. This is useful for a number of purposes. In our case it is important that you can sign files with your key so they can be identified as something that you worked on. If you upload a source package to Launchpad, it will only accept the package if it can absolutely determine who uploaded the package.
To generate a new GPG key, run::

    $ gpg --gen-key


GPG will first ask you which kind of key you want to generate. Choosing the default (RSA and DSA) is fine. Next it will ask you about the keysize. The default (currently 2048) is fine, but 4096 is more secure. Afterwards, it will ask you if you want it to expire the key at some stage. It is safe to say “0”, which means the key will never expire. The last questions will be about your name and email address. Just pick the ones you are going to use for Kubuntu development here, you can add additional email addresses later on. Adding a comment is not necessary. Then you will have to set a passphrase, choose a safe one (a passphrase is just a password which is allowed to include spaces).
Now GPG will create a key for you, which can take a little bit of time; it needs random bytes, so if you give the system some work to do it will be just fine. Move the cursor around, type some paragraphs of random text, load some web page.
Once this is done, you will get a message similar to this one::

    pub   4096R/43CDE61D 2010-12-06
          Key fingerprint = 5C28 0144 FB08 91C0 2CF3  37AC 6F0B F90F 43CD E61D
    uid   Daniel Holbach <dh@mailempfang.de>
    sub   4096R/51FBE68C 2010-12-06


In this case 43CDE61D is the key ID.
Next, you need to upload the public part of your key to a keyserver so the world can identify messages and files as yours. To do so, enter::

    $ gpg --send-keys --keyserver keyserver.ubuntu.com <KEY ID>


This will send your key to the Ubuntu keyserver, but a network of keyservers will automatically sync the key between themselves. Once this syncing is complete, your signed public key will be ready to verify your contributions around the world.

2.1.2. Create your SSH key
~~~~~~~~~~~~~~~~~~~~~~~~~~

SSH stands for Secure Shell, and it is a protocol that allows you to exchange data in a secure way over a network. It is common to use SSH to access and open a shell on another computer, and to use it to securely transfer files. For our purposes, we will mainly be using SSH to securely upload source packages to Launchpad.
To generate an SSH key, enter::

    $ ssh-keygen -t rsa


The default file name usually makes sense, so you can just leave it as it is. For security purposes, it is highly recommended that you use a passphrase.

2.1.3. Set up pbuilder
~~~~~~~~~~~~~~~~~~~~~~

pbuilder allows you to build packages locally on your machine. It serves a couple of purposes:
The build will be done in a minimal and clean environment. This helps you make sure your builds succeed in a reproducible way, but without modifying your local system
There is no need to install all necessary build dependencies locally
You can set up multiple instances for various Kubuntu and Debian releases
Setting pbuilder up is very easy, run::

    $ pbuilder-dist <release> create


where <release> is for example raring, saucy, trusty or in the case of Debian maybe sid. This will take a while as it will download all the necessary packages for a “minimal installation”. These will be cached though.

2.2. Get set up to work with Launchpad
--------------------------------------

With a basic local configuration in place, your next step will be to configure your system to work with Launchpad. This section will focus on the following topics:
What Launchpad is and creating a Launchpad account
Uploading your GPG and SSH keys to Launchpad
Configuring Bazaar to work with Launchpad
Configuring Bash to work with Bazaar

2.2.1. About Launchpad
~~~~~~~~~~~~~~~~~~~~~~

Launchpad is the central piece of infrastructure we use in Kubuntu. It not only stores our packages and our code, but also things like translations, bug reports, and information about the people who work on Kubuntu and their team memberships. You will also use Launchpad to publish your proposed fixes, and get other Kubuntu developers to review and sponsor them.
You will need to register with Launchpad and provide a minimal amount of information. This will allow you to download and upload code, submit bug reports, and more.
Besides hosting Kubuntu, Launchpad can host any Free Software project. For more information see the Launchpad Help wiki.

2.2.2. Get a Launchpad account
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

If you don’t already have a Launchpad account, you can easily create one. If you have a Launchpad account but cannot remember your Launchpad id, you can find this out by going to https://launchpad.net/~ and looking for the part after the ~ in the URL.
Launchpad’s registration process will ask you to choose a display name. It is encouraged for you to use your real name here so that your Kubuntu developer colleagues will be able to get to know you better.
When you register a new account, Launchpad will send you an email with a link you need to open in your browser in order to verify your email address. If you don’t receive it, check in your spam folder.
The new account help page on Launchpad has more information about the process and additional settings you can change.

2.2.3. Upload your GPG key to Launchpad
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

First, you will need to get your fingerprint and key ID.
To find about your GPG fingerprint, run::

    $ gpg --fingerprint email@address.com


and it will print out something like::

    pub   4096R/43CDE61D 2010-12-06
          Key fingerprint = 5C28 0144 FB08 91C0 2CF3  37AC 6F0B F90F 43CD E61D
    uid   Daniel Holbach <dh@mailempfang.de>
    sub   4096R/51FBE68C 2010-12-06


Then run this command to submit your key to Ubuntu keyserver::

    $ gpg --keyserver keyserver.ubuntu.com --send-keys 43CDE61D


where 43CDE61D should be replaced by your key ID (which is in the first line of output of the previous command). Now you can import your key to Launchpad.

Head to https://launchpad.net/~/+editpgpkeys and copy the “Key fingerprint” into the text box. 

In the case above this would be 5C28 0144 FB08 91C0 2CF3  37AC 6F0B F90F 43CD E61D. 
Now click on “Import Key”.

Launchpad will use the fingerprint to check the Ubuntu key server for your key and, if successful, send you an encrypted email asking you to confirm the key import. Check your email account and read the email that Launchpad sent you. If your email client supports OpenPGP encryption, it will prompt you for the password you chose for the key when GPG generated it. Enter the password, then click the link to confirm that the key is yours.
Launchpad encrypts the email, using your public key, so that it can be sure that the key is yours. If you are using Thunderbird, the default Ubuntu email client, you can install the Enigmail plugin to easily decrypt the message. If your email software does not support OpenPGP encryption, copy the encrypted email’s contents, type gpg in your terminal, then paste the email contents into your terminal window.
Back on the Launchpad website, use the Confirm button and Launchpad will complete the import of your OpenPGP key.

Find more information at https://help.launchpad.net/YourAccount/ImportingYourPGPKey

2.2.4. Upload your SSH key to Launchpad
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Open https://launchpad.net/~/+editsshkeys in a web browser, also open ~/.ssh/id_rsa.pub in a text editor. This is the public part of your SSH key, so it is safe to share it with Launchpad. Copy the contents of the file and paste them into the text box on the web page that says “Add an SSH key”. Now click “Import Public Key”.
For more information on this process, visit the creating an SSH keypair page on Launchpad.

2.2.5. Configure Bazaar
~~~~~~~~~~~~~~~~~~~~~~~

Bazaar is the tool we use to store code changes in a logical way, to exchange proposed changes and merge them, even if development is done concurrently. It is used for the new Kubuntu Distributed Development method of working with Kubuntu packages.
To tell Bazaar who you are, simply run::

    $ bzr whoami "Bob Dobbs <subgenius@example.com>"
    $ bzr launchpad-login subgenius


whoami will tell Bazaar which name and email address it should use for your commit messages. With launchpad-loginyou set your Launchpad ID. This way code that you publish in Launchpad will be associated with you.
Note: If you can not remember the ID, go to https://launchpad.net/~ and see where it redirects you. The part after the “~” in the URL is your Launchpad ID.)

2.2.6. Configure your shell
~~~~~~~~~~~~~~~~~~~~~~~~~~~

Similar to Bazaar, the Debian/Kubuntu packaging tools need to learn about you as well. Simply open your ~/.bashrc in a text editor and add something like this to the bottom of it::

    export DEBFULLNAME="Bob Dobbs"
    export DEBEMAIL="subgenius@example.com"


Now save the file and either restart your terminal or run::

    $ source ~/.bashrc


(If you do not use the default shell, which is bash, please edit the configuration file for that shell accordingly.)
