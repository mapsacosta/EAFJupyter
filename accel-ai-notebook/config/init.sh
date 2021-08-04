# Initializing READS repository
git clone git@github.com:fermilab-accelerator-ai/READS.git /opt/

# Creating READS unix group and adding $NB_USER to it
groupadd -g 1005 READS
usermod -a -g READS ${NB_USER}

# Preparating mount subdirectories
#mkdir /store/READS/
#chmod g+rwx foldername 

