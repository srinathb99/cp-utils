#!/bin/sh
SNIPPET_NAME=$1
sudo bash remove_snippet $SNIPPET_NAME

SNIPPET_SOURCE=$2
sudo bash add_snippet $SNIPPET_NAME $SNIPPET_SOURCE
