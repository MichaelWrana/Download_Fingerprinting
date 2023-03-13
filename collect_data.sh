#!/bin/bash

for i in {1..2500}
do

   # github
   tcpdump -i en0 -s 65535 -w file1_github_$i.pcapng & sleep 0.5; wget https://raw.githubusercontent.com/MichaelWrana/Download_Fingerprinting/main/file1; sleep 1
   pkill tcpdump

   sleep 5

   tcpdump -i en0 -s 65535 -w file2_github_$i.pcapng & sleep 0.5; wget https://raw.githubusercontent.com/MichaelWrana/Download_Fingerprinting/main/file2; sleep 1
   pkill tcpdump

   sleep 5

   # nextdrive
   tcpdump -i en0 -s 65535 -w file1_vault_$i.pcapng & sleep 0.5; wget https://vault.cs.uwaterloo.ca/s/yN2DepYxqWF4Jmg/download/file1; sleep 1
   pkill tcpdump

   sleep 5

   tcpdump -i en0 -s 65535 -w file2_vault_$i.pcapng & sleep 0.5; wget https://vault.cs.uwaterloo.ca/s/8LCW6paee89R7D6/download/file2; sleep 1
   pkill tcpdump

   sleep 5

   # google drive
   tcpdump -i en0 -s 65535 -w file1_google_$i.pcapng & sleep 0.5; wget --no-check-certificate 'https://docs.google.com/uc?export=download&id=1dDRxBry3NntjB3f0MHERJhDlB-bXJM-m'; sleep 1
   pkill tcpdump

   sleep 5

   tcpdump -i en0 -s 65535 -w file2_google_$i.pcapng & sleep 0.5; wget --no-check-certificate 'https://docs.google.com/uc?export=download&id=1iaKeQDnOBTwIFwOWUWkLzHi4Z7LXAf3Y'; sleep 1
   pkill tcpdump

   sleep 5

   # germany
   tcpdump -i en0 -s 65535 -w file1_germany_$i.pcapng & sleep 0.5; wget https://cloud.mpi-sws.org/index.php/s/965K2FKjJLNQokf/download/file1; sleep 1
   pkill tcpdump

   sleep 5

   tcpdump -i en0 -s 65535 -w file2_germany_$i.pcapng & sleep 0.5; wget https://cloud.mpi-sws.org/index.php/s/BDwMfqxH7Qc6zRq/download/file2; sleep 1
   pkill tcpdump

   sleep 5
done

#exit 0