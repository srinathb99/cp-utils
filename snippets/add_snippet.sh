#!/bin/sh
SNIPPET_NAME=$1
SNIPPET_SOURCE=$2
touch temp
python3 flatten_snippet.py $SNIPPET_SOURCE | tr -d "'" > temp #create one-line version with literal newlines and tabs
perl -i -pe 's/\\n/\\\\n/g' temp #replace \n with \\n
perl -i -pe 's/\\t/\\\\t/g' temp #replace \t with \\t
SNIPPET="${SNIPPET_NAME}=$(cat temp)"
rm -f temp
echo $SNIPPET

sudo sed -i "
/\[C++\]/ a\
$SNIPPET
" /usr/share/geany/snippets.conf
