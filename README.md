Kubuntu Manual
===============

Licensed under FDL v1.1

16.10 STATUS: Updating text and screenshots, adding sections like Activities and a Packaging Guide 

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
                                                                                                           
## Contributing                                                                                            
                                                                                                           
To contribute to the Kubuntu Manual, you can either create a pull request on GitHub, or send patch mail to 
[kubuntu-devel@lists.ubuntu.com](mailto:kubuntu-devel@lists.ubuntu.com) and prefix the subject with `[Kubun
tu Manual Pull Request]`.                

We take simple fixes like grammar, spelling all the way to translations!

---
Helpful Links::

KDE MediaWiki: http://userbase.kde.org/Kubuntu

RST: http://docutils.sourceforge.net/rst.html

Built HTML from RST with Sphinx:
http://sphinx-doc.org/

Send suggestions to aaronhoneycutt@kubuntu.org

---
Written by the Kubuntu Team
