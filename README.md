Kubuntu Manual
===============

Licensed under CC-BY-SA 4.0 
Following this: https://community.kde.org/Policies/Licensing_Policy

# Version Scheme

This project is following the Ubuntu release cycle when it comes to numbers so the initial release will have 22.04.0 (for that Kubuntu release) then updates will follow a point based system, for example the next update would be 22.04.1.

This does not mean that the 22.04.1 release of the manual can't be used with the 22.04.0 release of Kubuntu.

## How it works

The documentation is powered by [Sphinx](http://www.sphinx-doc.org/en/stable/).

Run the following command to install the needed dependencies:

Bash:

```
sudo apt install python3-sphinx python3-pip texlive-full && pip3 install sphinx_bootstrap_theme
```                                                                                            

Fish:

```
sudo apt install python3-sphinx python3-pip texlive-full; and pip3 install sphinx_bootstrap_theme
```
                                                                                                           
You can see the options for building the documentation by running `make help`.                             

## How translations work

Documentation is here: http://www.sphinx-doc.org/en/stable/intl.html

```
pip3 install sphinx-intl
```

## What you can do

Once you use 'git clone' to copy this repo to your machine you can:

```
sphinx-build -b html docs ../build
```

to produce HTML files in build/html


```
sphinx-build -b epub docs ../build
```

to produce a epub file in build/epub

We are aware that the images in the epub are pixely and looking for a fix
                                                                                                           
## Contributing                                                                                            
                                                                                                           
To contribute to the Kubuntu Manual, you can either create a pull request on GitHub, or send patch mail to 
[kubuntu-devel@lists.ubuntu.com](mailto:kubuntu-devel@lists.ubuntu.com) and prefix the subject with `[Kubuntu Manual Pull Request]`.                

We take simple fixes like grammar, spelling, translations, and new pages!

For how we format the pages look at RST-Template.rst as a starting point.

***
Helpful Links::

KDE MediaWiki: http://userbase.kde.org/Kubuntu

RST: http://docutils.sourceforge.net/rst.html

Built HTML from RST with Sphinx:
http://sphinx-doc.org/

---
Written by the Kubuntu Team
