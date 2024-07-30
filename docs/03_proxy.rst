******************************
Web browser proxy for offsite access (Firefox)
******************************

.. important::

    Please be mindful of open-sessions:
       * When you're done using EAF, especially on shared or public computers, make sure to log out completely. This helps protect the facility and computing infrastructure from being accessed by others.


========
Instructions 
========

This is a TWO step process, please follow all the instructions before trying to reach EAF.

Step 1. Set up the proxy in your browser

1. Download FoxyProxy for use with the Firefox browser or install it as an extension from the official `Firefox extensions <https://addons.mozilla.org/en-US/firefox/addon/foxyproxy-standard/>`_ catalog.

2. Once that is installed and integrated with Firefox, navigate to the 'puzzle piece' extensions icon (top right).

3. Click on the FoxyProxy extension to enter its configuration.

4. Click 'Options' and in the 'Proxies' tab, click 'Add'.

   * **General**
     * **Title**: A short title, i.e., Fermilab
     * Select **SOCKS5** from the Proxy Type dropdown.
     * **Proxy IP address or DNS name**: localhost
     * **Port**: 1080 (free to choose here but must match the tunnel created)
     * Save
   * **URL patterns (optional)**:
     * You may configure URL patterns when you want specific IPs/sites to route connections through the tunnel.

5. To let the browser know about the proxy, navigate to the extension and select your newly created proxy 'Fermilab'.

6. You’re done! You should now notice a little fox face in the top-right corner of your browser. The color should match the color selected in the “Options” menu (default is blue, but you can change it, which is nice if you have more than one proxy setting).


*Source*: https://library.fnal.gov/off-site-electronic-access-instructions/

Step 2. Get the proxy running

1. Create a ssh tunnel to the CMSLPC/fnalu, using Putty or a shell run:

        ssh -D 1080 your_user_name@fnalu.fnal.gov

2. To test the network, [click here!](https://analytics-hub.fnal.gov/)
