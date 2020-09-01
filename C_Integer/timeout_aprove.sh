#!/usr/bin/env bash

echo "------------------------------------------------------"
echo "RUNNING APROVE"
echo "filename: $1"
time gtimeout -k 10s -v 300s /Users/mhaslbeck/Projects/aprove/current_approve.sh -s ~/Projects/aprove/aprove/src/aprove/PredefinedStrategies/Certify/llvm.strategy -p cpf -C ceta -q "query:main()" $1 | xmllint -format - > ~/Vagrant/mounts/llvm_test_machine_ubuntu1804/Projects/cpf_example_output/Stroeder_15/$1.cpf
