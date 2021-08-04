# Initializing READS repository
cd /home/$NB_USER
git clone git@github.com:fermilab-accelerator-ai/READS.git

# Fix permissions
chown -R $NB_USER:$NB_GROUP /home/$NB_USER

# Creating READS unix group and adding $NB_USER to it
groupadd -g 1005 READS
usermod -a -g READS ${NB_USER}

# Preparating mount subdirectories
#mkdir /store/READS/
#chmod g+rwx /store/READS
