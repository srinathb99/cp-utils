#!/bin/bash

to_char() { #converts 0 to A, 1 to B,...
  printf \\$(printf '%03o' $1)
}

C_NAME=$1
N_PROBLEMS=$2
mkdir $C_NAME
cd $C_NAME
for((i = 0; i < N_PROBLEMS; ++i));
do 
	P_NAME=$(to_char $((65 + $i)))
	create_problem $P_NAME
done;
