#!/bin/bash

for i in {1..2500}
do

   tcpdump -i en0 -s 65535 -w file1_$i.pcapng & sleep 0.5; wget https://raw.githubusercontent.com/MichaelWrana/Download_Fingerprinting/main/file1; sleep 1
   pkill tcpdump

   sleep 5

   tcpdump -i en0 -s 65535 -w file2_$i.pcapng & sleep 0.5; wget https://raw.githubusercontent.com/MichaelWrana/Download_Fingerprinting/main/file2; sleep 1
   pkill tcpdump
   
done

#exit 0