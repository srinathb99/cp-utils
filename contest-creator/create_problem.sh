#!/bin/bash

P_NAME=$1
mkdir $P_NAME
cd $P_NAME
cp /opt/contest_creator/template.cpp sol.cpp
cp /opt/contest_creator/template.cpp brute.cpp
cp /opt/contest_creator/gen.cpp gen.cpp
cp /opt/contest_creator/run_tests.sh run_tests.sh
touch in
touch out
cd ..
