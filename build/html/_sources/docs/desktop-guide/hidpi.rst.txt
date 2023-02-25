.. _hidpi-link:

HiDPI
======

This means "High Dots Per Inch" and is mainly for screens with a high resolution in a relatively small format. A good example of this is a 15" laptop with a screen resolution of 3840x2160 which would be 4K. Making the following changes will help make your Plasma experience even better.

.. note:: The below changes will only take effect after either a reboot, logging out and back in or restarting Plasma.

Scaling
--------

Display
~~~~~~~~

This setting is in System Settings -> Display and Monitor -> Global scale and depending on your display and personal preference, using 200% might be a great option though 150% would also work. Please note that depending on the application you might see some blurriness if you use a value between 100% and 200%.

.. image:: ../../images/jammy/hidpi/display-and-monitor.png
   :align: center

Virtualbox
~~~~~~~~~~~

When starting a VM in Virtualbox (as of version 6.1.38) the window will be rather small due to the scaling set to 100% by default. This can be changed per VM in Settings -> Display -> Screen -> Scale Factor like in the screenshot below:

.. image:: ../../images/jammy/hidpi/virtualbox-display-settings-window.png
   :align: center

Cursor
-------

This setting is in System Settings -> Appearance -> Cursors -> Size and similar to scaling this will be based on preference but 36 is a good value to start with.

.. image:: ../../images/jammy/hidpi/appearance-cursors.png
   :align: center

Panel
------

For adjusting the panel to improve your experience we'll refer to the :ref:`panel` section from the Advanced page.


