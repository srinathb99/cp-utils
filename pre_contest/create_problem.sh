P_NAME=$1
mkdir $P_NAME
cd $P_NAME
cp ../../pre_contest/template.cpp sol.cpp
cp ../../pre_contest/template.cpp brute.cpp
cp ../../pre_contest/gen.cpp gen.cpp
cp ../../pre_contest/run_tests.sh run_tests.sh
touch in
touch out
cd ..
