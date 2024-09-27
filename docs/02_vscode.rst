******************
Visual Studio Code
******************

JupyterHub supports the use of **Visual Studio Code (VS Code)**.

Follow these steps to set up JupyterHub with VS Code:

1. **Install the JupyterHub Extension**  

   - After installing VS Code, navigate to the Extensions sidebar (or go to *View > Extensions*).
   - Search for **JupyterHub**, but **do not** click on the blue "Install" button yet.
   - Click on the name **JupyterHub**, select the gear icon, and choose **Install specific version**.
   - Install the version starting with ``2023.10``.

2. **Generate an API Token**  

   - Go to https://analytics-hub.fnal.gov/hub/token to generate an API token.
   - Copy the token to your clipboard (Ctrl+C).

3. **Create or Open a Jupyter Notebook**  

   - Open an existing notebook or create a new one:
     
     - Press *Ctrl+Shift+P* to open the **Command Palette**.
     - Select **Jupyter: Create New Jupyter Notebook**.

   - In the notebook, open the **Kernel Picker** (top-right corner).
   - Select **Existing JupyterHub Server**.

4. **Configure the JupyterHub Server**  

   - Enter ``https://analytics-hub.fnal.gov`` as the URL for the JupyterHub server.
   - When prompted, provide your username and paste the token (Ctrl+V) you copied earlier.
   - You should now be able to choose a kernel for your notebook.

-------------------------
Using JetBrains DataSpell
-------------------------

You can also use **JetBrains DataSpell** to connect to JupyterHub with a few modifications:

1. **Start a JupyterHub Server**  

   - Use the **Start My Server** option in JupyterHub.  
   - *Note*: Named server options do *not* work with DataSpell.

2. **Trust the Notebook**  

   - In DataSpell, make sure to click the **Trusted** box for the notebook.  
   - Failing to do so might trigger an unsupported debugging mode.

