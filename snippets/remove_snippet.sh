#!/bin/sh
SNIPPET_NAME=$1
sudo sed -i "/$SNIPPET_NAME=/d" /usr/share/geany/snippets.conf
