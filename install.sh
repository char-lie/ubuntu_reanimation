#!/bin/bash
if ! [ $USER=='root' ] then
    echo "You must be root! Use sudo for this"
    exit 1
fi
# Server
apt-get -y install apache2
apt-get -y install ssh
  # MapServer
  apt-get -y install mapserver && echo "# Spherical mercator
<900913> +proj=merc +a=6378137 +b=6378137 +lat_ts=0.0 +lon_0=0.0 +x_0=0.0 +y_0=0 +k=1.0 +units=m +nadgrids=@null +no_defs" >> /usr/share/epsg/proj
  # PHP
  apt-get -y install php5
  # WSGI
  apt-get -y install libapache2-mod-wsgi
# C/C++
apt-get -y install linux-headers-$(uname -r) libglib2.0-0
apt-get -y install build-essential qtcreator
# Python
apt-get -y install python-setuptools python3 python2.7 python-dev
apt-get -y install ipython
  # Django
  apt-get -y install python-django && easy_install django
    # Kombu
    easy_install kombu django-kombu
    # Celery
    easy_install celery django-celery
# PostgreSQL
apt-get -y install postgresql postgresql-client postgresql-server-dev-all python-psycopg2 && easy_install psycopg2
apt-get -y install pgadmin3
sudo -u postgres psql <<<'\password postgres'
# SQLite
apt-get -y install sqlite python-sqlite
# Ruby
apt-get -y install ruby-full && apt-get -y install rails
# LISP
apt-get -y install clisp clisp-dev
# Haskell
apt-get -y install ghc
# Editors
apt-get -y install emacs vim-gtk
apt-get -y install filezilla
apt-get -y install git
apt-get -y install tmux
# QGis
add-apt-repository ppa:ubuntugis/ubuntugis-unstable
apt-get update
apt-get -y install qgis
