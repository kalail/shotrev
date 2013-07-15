# Update
apt-get update -y
# Change root password
echo -e 'password\npassword\n' | passwd
echo -e 'password\npassword\n' | passwd vagrant
# Install python utilities
apt-get install -y build-essential python-dev python-setuptools python-pip
# Set up postgres
# passwd postgres

# -u postgres createuser -P shotrev_user
# su postgres
# psql template1
# CREATE DATABASE shotrev_db OWNER shotrev_user;
# \q

# Virtual environment
pip install virtualenvwrapper
echo 'export WORKON_HOME=$HOME/.virtualenvs' >> /home/vagrant/.bashrc
echo 'export PIP_DOWNLOAD_CACHE=$HOME/.pip_download_cache' >> /home/vagrant/.bashrc
echo 'source /usr/local/bin/virtualenvwrapper.sh' >> /home/vagrant/.bashrc

# ln -fs /vagrant /var/www
