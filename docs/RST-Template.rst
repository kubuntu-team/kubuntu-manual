:orphan:

Title
======

Header 
-------

Sub Header 1
~~~~~~~~~~~~~

Sub Header 2
-------------

Sub Header 3
~~~~~~~~~~~~~

.. image: images/holderimage.png
	:align: center, left, right

Admonitions
===========
The Sphinx Bootstrap Theme uses the Bootstrap ``alert`` classes for Sphinx
admonitions.

Note
----
.. note:: This is a **note**.

Todo
----
.. todo:: This is a **todo**.

Warning
-------
.. warning:: This is a **warning**.

Danger
------
.. danger:: This is **danger**-ous.

Footnotes
=========
I have footnoted a first item [#f1]_ and second item [#f2]_.

.. rubric:: Footnotes
.. [#f1] My first footnote.
.. [#f2] My second footnote.

Tables
======
Here are some examples of Sphinx
`tables <http://sphinx-doc.org/rest.html#rst-tables>`_. The Sphinx Bootstrap
Theme removes all Sphinx ``docutils`` classes and replaces them with the
default Bootstrap ``table`` class.  You can add additional table classes
using the Sphinx ``cssclass::`` directive, as demonstrated in the following
tables.

Grid
----
A "**bordered**" grid table:

.. cssclass:: table-bordered

+------------------------+------------+----------+----------+
| Header1                | Header2    | Header3  | Header4  |
+========================+============+==========+==========+
| row1, cell1            | cell2      | cell3    | cell4    |
+------------------------+------------+----------+----------+
| row2 ...               | ...        | ...      |          |
+------------------------+------------+----------+----------+
| ...                    | ...        | ...      |          |
+------------------------+------------+----------+----------+

Credits to: 
https://ryan-roemer.github.io/sphinx-bootstrap-theme/examples.html
