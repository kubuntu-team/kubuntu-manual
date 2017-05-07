Installation
==============

Why try Kubuntu?
-----------------

There are many good reasons to install Kubuntu!
Some of them include:

- Kubuntu makes your PC friendly. 
- Kubuntu is an operating system built by a friendly worldwide team of expert developers. 
  It contains all the applications you need: web browser, office suite, media apps, 
  instant messaging, and many others. For a list of the included software, see the 
  :ref:`software-link` page.
 
- Kubuntu is a free, open-source alternative to Windows and Mac OS X.

- Easily install beside, or instead of, Windows.

.. _get-kubuntu-link:

Preparing the Installation media
---------------------------------

Getting the ISO(Disc Image):

Download it though `Get Kubuntu <http://www.kubuntu.org/getkubuntu/>`_.

Checking the MD5SUM
~~~~~~~~~~~~~~~~~~~~

.. _checksum-link:

Doing this will make sure your download completed fully and has given you a fully working ISO to boot and perhaps later install from. 

From Windows XP -> 7 -> 8 -> 10
````````````````````````````````

Microsoft Windows does not have any built-in tools for MD5SUM but they do
provide some `decent documentation <https://support.microsoft.com/en-us/kb/841290>`_ and a tool for checking the MD5SUM. How-To-Geek also provides some `reading material <http://www.howtogeek.com/67241/htg-explains-what-are-md5-sha-1-hashes-and-how-do-i-check-them/>`_ if you want to understand the technology behind MD5SUM if you like.

From Mac OS X 
``````````````

Open the Terminal app, then navigate to the directory where the ISO is saved.
Run:

.. code-block:: bash

    md5 -r kubuntu-17.04-desktop-amd64.iso

And compare the output to the hashes page for the ISO file.


From Ubuntu Linux
``````````````````

The first thing to do is to make sure you're in the directory with the .iso file (most likely in the Downloads directory). For more complex use of MD5SUM check this `out <https://help.ubuntu.com/community/HowToMD5SUM>`_. Then running the command 'md5sum':

.. code-block:: bash

    md5sum kubuntu-17.04-desktop-amd64.iso


Windows 7/8
~~~~~~~~~~~~

.. _usb-drives-link:

USB/Flash Drives
`````````````````

For a GUI (Graphic User Interface) we use `UNetBootin <http://unetbootin_link/>`_.

If you choose the `Diskimage` option you use the `...` button to select your downloaded ISO. Then click OK. 

.. image:: ../images/unetbootin-win78.png
    :align: center
    
.. warning:: Pay special attention when selecting the right USB device under 'Drive'

DVD
````

The recommended tool to use is `ImgBurn <http://www.imgburn.com/>`_. There is a excellent how-to on the ImgBurn forums by the admin `here <http://forum.imgburn.com/index.php?/topic/61-how-to-write-an-image-file-to-a-disc-using-imgburn/>`_. 

.. _kubuntu-install-link:

Mac OS X
~~~~~~~~~

Burn an installer DVD using `Disk Utility
<https://help.ubuntu.com/community/BurningIsoHowto#Burning_from_Mac_OS_X>`_.

Existing Kubuntu Install
~~~~~~~~~~~~~~~~~~~~~~~~~

USB/Flash Drives
`````````````````

Since UNetBootin is a cross-platform application we will be using the same instructions from :ref:`usb-drives-link`

.. warning:: Be extremely careful to set /dev/sdX to the right value, if you point it to your hard drive you will wipe the disk.

DVD
````


.. image:: ../images/K3b.png
    :align: center
    
Look for `More actions...` click it then pick `Burn image...` from the list of actions
    
.. image:: ../images/K3b-1.png
    :align: center

Then you select the ISO(Disk Image) that you want to burn to the DVD from your computer.  

.. note:: Most torrent and browsers store your downloads in the 'Download' directory.

.. note:: Most of the default setting for K3b for DVD burning are fine


Other Linux Distributions
~~~~~~~~~~~~~~~~~~~~~~~~~~

GNOME Environment
~~~~~~~~~~~~~~~~~~

USB/Flash Drives
`````````````````
For USB/Flash Drives we'll be stick to using UNetBootin from this tutorial: :ref:`usb-drives-link`

DVD
````

.. image:: ../images/UbuntuGNOMEBrasero.png
    :align: center
    
For Linux Distributions that use GNOME we'll be using the default DVD burning tool Brasero.

KDE Environment
~~~~~~~~~~~~~~~~

USB/Flash Drives
`````````````````

DVD
````

You can follow the same instructions as a :ref:`kubuntu-install-link`

Install Process
----------------

.. note:: You will need to press a special key on the keyboard in order to boot from your chosen Installation Media. Ex: Esc, F2, F10, F12, or Del it all depends on the OEM(Original Equipment Manufacturer) 


First we'll need the Kubuntu Disk Image(ISO) from here: :ref:`get-kubuntu-link`

.. image:: ../images/welcome-slide.png
    :align: center

When the installer starts you will see these options:

- Try out Kubuntu without changing anything on your computer
- Install Kubuntu on your computer.
    
Prepare
~~~~~~~~

Fro the best result, ensure that:

- Your computer has enough room for Kubuntu and your data - your songs, pictures, videos, and documents. 
- Your computer is connected to the Internet so that you can download updates and third-party software as Kubuntu is installing. 

.. image:: ../images/zesty/prepare.png
    :align: center
    
Include this third-party software: includes software that either does not follow the Open Source model or the `Ubuntu Philosophy <http://www.ubuntu.com/about/about-ubuntu/our-philosophy>`_, but is safe for use on your system. 

Download updates while installing: will ensure that you have the latest bug and security fixes included and applied once the installation is complete. 

Disk Setup
~~~~~~~~~~~

This is where you choose how to organize your hard drive. This step is the most complicated and consequential in the entire install process, so take your time. 

.. note:: You will be able to change your mind and go back until the Install Now button is clicked  

The following sections are some possible installation scenarios you might choose. Each of these choices points to a page or series of pages with more details. For each option (except Manual), the installer asks which hard drive to use. After choosing, you will see a before and after layout on that hard drive. 

Resize
```````

This will resize the partitions for you and install Kubuntu on the free space. With this option you can create what is called a dual-boot and choose which OS to boot into at startup. 

.. note:: This is available only at least 25GB can be freed
    
Use entire disk
````````````````

.. image:: ../images/zesty/disksetup-full.png
    :align: center

.. warning:: This will wipe all your data    

Use entire disk and set up LVM
```````````````````````````````

More about `LVM <https://wiki.ubuntu.com/Lvm>`_

Use entire disk and set up encrypted LVM
`````````````````````````````````````````

More about `encrypted file systems <https://help.ubuntu.com/community/EncryptedFilesystems>`_

Manual
```````

.. image:: ../images/zesty/disksetup-manual.png
    :align: center

When using Manual to set up your system as you would like it, keep these thoughts in mind:

- The root ( / ) directory needs at least 25 GBs of space.
- The home ( /home ) directory needs as much space as you will need for your files, music, pictures and documents.
  So it is best to use the remaining space for the home partition, unless you have going to dual boot.
- Swap space of at least half of the available RAM is recommended. For instance, with 8 GBs, make the swap with at least 4 GBs. 

.. note:: If you have a Windows 8 sticker on your machine you might need to make a separate EFI partition with a fat32 filesystem.

For more detailed information regarding the Disk Setup of a linux system you can check the `DiskSpace <https://help.ubuntu.com/community/DiskSpace>`_ page. 

Timezone
~~~~~~~~~

During this step you get to pick the Region where you live and then the Timezone of the location in that Region. An example would be that I live in New York, so my Region is North America and my Timezone is New York. 

.. image:: ../images/zesty/timezone.png
    :align: center

Keyboard
~~~~~~~~~

This is the step that will set up your keyboard's language and, if the language has it, a different version of the language. For example, there is a Cherokee American English setting as well as different setups with special keys used in certain countries; in Kubuntu we try to make the system easy for everyone! 

.. image:: ../images/zesty/keyboard.png
    :align: center

User Info
~~~~~~~~~~

At this step of the installation you will be putting in user information like your name, username, and password. The password will be your key to logging into your new installation as well as installing new software, updating your system, and more, so keep it written down somewhere! 

.. image:: ../images/zesty/userinfo.png
    :align: center
