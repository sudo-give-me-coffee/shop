#!/usr/bin/env bash

set -ex

sudo apt-get install build-essential devscripts debhelper gettext libappstream-dev libgee-0.8-dev libgranite-dev libgtk-3-dev libjson-glib-dev libpackagekit-glib2-dev libsoup2.4-dev libunity-dev libxml2-dev libxml2-utils meson valac make build-essential cmake libhandy-0.0-dev libflatpak-dev flatpak

VERSION="$(dpkg-parsechangelog -S Version)"
debuild -b -uc -us -nc

cd ..
ls

#sudo dpkg -i "../pop-shop_${VERSION}_amd64.deb"

