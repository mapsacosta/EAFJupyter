.. highlight:: console

*******
Storage
*******

Persistent volumes
==================

Users are allocated 24 GiB of storage in their home directory, provided via
a persistent volume claim to a CephFS filesystem::

   [burt@jupyter-burt ~]$ df -h /home/burt
   Filesystem                                        Size  Used Avail Use% Mounted on
   10.226.25.22:6789:/volumes/okddev/csi-vol-[...]   23G   23G   988M  96% /home/burt

This storage is not visible to other users; for sharable storage, we recommend using NFS volumes.
Increases to storage capacity are available upon request.


Remote filesystems (NFS)
========================

All Users
---------

Users have access to their centrally-provided NFS home directories – the home directories 
available on fnalu and in gpvms – in ``/nashome``; the actual directory depends on the first
letter of the username. For example, user burt’s home directory is located at ``/nashome/b/burt``.

It may be easiest to symlink your nashome directory to your EAF home directory - you only need do this once::

   [burt@jupyter-burt ~]$ ln -s /nashome/b/burt ~/nashome
   [burt@jupyter-burt ~]$ ls -ld ~/nashome
   lrwxrwxrwx. 1 burt us_cms 15 Dec  9 21:56 /home/burt/nashome -> /nashome/b/burt
   [burt@jupyter-burt ~]$ cd ~/nashome

One difference is that files in ``/nashome`` will appear to be owned by UID 65534::

   [burt@jupyter-burt ~]$ touch ~/nashome/my-file
   [burt@jupyter-burt ~]$ ls -l ~/nashome/my-file
   -rw-r--r--. 1 65534 65534 0 Dec  9 16:01 /home/burt/nashome/my-file

This is purely a cosmetic issue; the files are actually owned by your UID (as verified on fnalu)::

   [burt@baz ~]$ ssh fnalu "ls -l ~/my-file"
   -rw-r--r--. 1 burt nobody 0 Dec  9 16:01 /nashome/b/burt/my-file

CMS Users
---------

All of the “normal” LPC NFS file systems are available:

   * /uscms_data/data1
   * /uscms_data/data2
   * /uscms_data/data3
   * /uscms/scratch1
   * /uscms/home

We recommend symlinking your LPC home directory to your EAF home directory::

   [burt@jupyter-burt ~]$ ln -s /uscms/home/$(id -u -n) ~/uscmshome
.. highlight:: console

