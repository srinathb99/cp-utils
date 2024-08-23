#!/bin/sh
SNIPPET_NAME=$1
sudo bash remove_snippet.sh $SNIPPET_NAME

SNIPPET_SOURCE=$2
sudo bash add_snippet.sh $SNIPPET_NAME $SNIPPET_SOURCE
