Kubuntu Manual
===============

Licensed under FDL v1.1

16.10 STATUS: Updating text and screenshots, adding sections like Activities and a Packaging Guide 

## To Do list

-[] Update docs.kubuntu.org to 16.04.1
-[] Find how python docs site handles versions (16.04.1 and 16.10)
-[] Find how python docs site handles translations 

## How it works

The documentation is powered by [Sphinx](http://www.sphinx-doc.org/en/stable/).

Run the following command to install the needed dependencies:

```
sudo apt install python3-sphinx texlive-full && pip install sphinx_bootstrap_theme
```                                                                                                        
                                                                                                           
You can see the options for building the documentation by running `make help`.                             

## How translations work

Documentation is here: http://www.sphinx-doc.org/en/stable/intl.html

```
pip install sphinx-intl
```

## What you can do

Once you use 'git clone' to copy this repo to your machine you can:

```
make html - to produce HTML files in build/html
```

```
make latexpdf - to produce a PDF file in build/latex
```

```
make epub -- to produce a epub file in build/epub
```

We are aware that the images in the epub are pixely and looking for a fix
                                                                                                           
## Contributing                                                                                            
                                                                                                           
To contribute to the Kubuntu Manual, you can either create a pull request on GitHub, or send patch mail to 
[kubuntu-devel@lists.ubuntu.com](mailto:kubuntu-devel@lists.ubuntu.com) and prefix the subject with `[Kubuntu Manual Pull Request]`.                

We take simple fixes like grammar, spelling all the way to translations!

***
Helpful Links::

KDE MediaWiki: http://userbase.kde.org/Kubuntu

RST: http://docutils.sourceforge.net/rst.html

Built HTML from RST with Sphinx:
http://sphinx-doc.org/

Send suggestions to aaronhoneycutt@kubuntu.org

---
Written by the Kubuntu Team
