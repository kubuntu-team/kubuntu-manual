.. _repositories-link:

Repositories
=============

Managing Repositories
----------------------

Add a Repository
~~~~~~~~~~~~~~~~~

You can use the Discover to add new repositories.

**How-to**: Start Discover. Select Settings, click 'More...' at the top of the window. Enter your administrative password at the prompt. Left-click the 'Other Software' tab. Left-click the 'Add...' button. Enter the repository address into the text box. The proper format is required, and looks similar to this: ppa:kubuntu-ppa/backports Left-click the 'OK' button to add the repository. Left-click the 'Close' button. A prompt will appear to update the package list. Discover will now be allowed to find the newly available software. 

.. image:: ../images/repos/SoftwareSources-zesty.png
    :align: center
    :scale: 50 %
.. image:: ../images/repos/EditRepos-zesty.png
    :align: center
    :scale: 75 %
.. image:: ../images/repos/EditRepo-zesty.png
    :align: center
    :scale: 75 %
    
Enable a Repository
~~~~~~~~~~~~~~~~~~~~

You can use the Discover to enable repositories.

**How-to**: Start Discover. Select Sources, Configure Software Sources in the window. Enter your administrative password at the prompt. Left-click the 'Other Software' tab. Check the appropriate box in the center section of the window to enable a repository. Left-click the 'Close' button. A prompt will appear to update the package list. Discover will now be allowed to find the newly available software. 

Disable a Repository
~~~~~~~~~~~~~~~~~~~~~

You can use the Discover to disable repositories.

**How-to**: Start Discover. Select Sources, Configure Software Sources in the window. Enter your administrative password at the prompt. Left-click the 'Other Software' tab. Uncheck the appropriate box in the center section of the window to disable a repository. Left-click the 'Close' button. A prompt will appear to update the package list. Discover will now forget the no longer available software. 

Remove a Repository
~~~~~~~~~~~~~~~~~~~~

You can use the Discover to remove repositories.

**How-to**: Start Discover. Select Sources, Configure Software Sources in the window. Enter your administrative password at the prompt. Left-click the 'Other Software' tab. Left-click the name of an existing repository in the center section of the window to select it. Left-click the 'Remove' button. Left-click the 'Close' button. A prompt will appear to update the package list. Discover will now forget the no longer available software. 

Managing Personal Package Archives
-----------------------------------

Personal Package Archives allow any person in the Ubuntu community who has committed to observe the `Ubuntu Code of Conduct <https://launchpad.net/codeofconduct>`_ to upload Ubuntu source packages to be built and published as an apt repository by Launchpad. Software from Launchpad's `Personal Package Archive <https://launchpad.net/ubuntu/+ppas>`_ (PPA) requires a `GnuPG <https://www.gnupg.org/>`_ (GPG) key so your system can verify that it's getting the packages from the correct source and that the packages have not been interfered with since they were built. GnuPG is GNU's tool for secure communication and data storage.

**Important**: The contents of Personal Package Archives are not checked or monitored. You install software from them at your own risk. 

Add a PPA
~~~~~~~~~~

You can use the Discover to add a PPA:

**How-to**: Open the Launchpad PPA overview page in your browser. Look for the location of the PPA in the 'Adding this PPA to your system' section.

Open Discover. Select Sources, Configure Software Sources in the window. Enter your administrative password at the prompt. Left-click on the 'Other Software' tab. Left-click the 'Add...' button. Paste the location you got from the PPA's overview page into the text box. Left-click the 'OK' button to add the repository. Left-click the 'Close' button. A prompt will appear to update the package list. Discover will now be allowed to find the newly available software.

You can use the command line to add a PPA on 9.10 Karmic Koala or newer Kubuntu systems:

**How-to**: Visit the Launchpad PPA overview page. Look for the location of the PPA in the 'Adding this PPA to your system' section.

Open a terminal window. Add the PPA to your system by entering this command in the terminal window, replacing Location with the location you got from the PPA's overview page: sudo add-apt-repository Location Update the package index by entering this command in the terminal window: sudo apt-get update You can now install software from the PPA. 

Remove a PPA
~~~~~~~~~~~~~

You can use the Discover to add a PPA:

**How-to**: Open the Launchpad PPA overview page in your browser. Look for the location of the PPA in the 'Adding this PPA to your system' section.

Open Discover. Select Sources, Configure Software Sources in the window. Enter your administrative password at the prompt. Left-click on the 'Other Software' tab. Left-click the 'Add...' button. Paste the location you got from the PPA's overview page into the text box. Left-click the 'OK' button to add the repository. Left-click the 'Close' button. A prompt will appear to update the package list. Discover will now be allowed to find the newly available software.

You can use the command line to add a PPA on 9.10 Karmic Koala or newer Kubuntu systems:

**How-to**: Visit the Launchpad PPA overview page. Look for the location of the PPA in the 'Adding this PPA to your system' section.

Open a terminal window. Add the PPA to your system by entering this command in the terminal window, replacing Location with the location you got from the PPA's overview page: sudo add-apt-repository Location Update the package index by entering this command in the terminal window: sudo apt-get update You can now install software from the PPA. 

Kubuntu Backports
~~~~~~~~~~~~~~~~~

The Kubuntu Backports are "Backports of new versions of KDE Platform, Plasma and Applications as well as major KDE apps for Kubuntu." As any PPA you should know how to remove it before you add it so please do read above on how to do so. The Backports exist because of the Ubuntu release cycle, if there is a new Plasma, Applications or Frameworks after the freeze or release of a new Ubuntu release we package it up for you to enjoy.

https://launchpad.net/~kubuntu-ppa/+archive/ubuntu/backports
