#!/bin/bash

(cd ../src && make clean && make && cp sid2analyzer ../test/ && make clean)

./sid2analyzer -o prgs/Easyriff.prg sids/Easyriff.sid
./sid2analyzer -nc -o prgs/Easyriff_nc.prg sids/Easyriff.sid
./sid2analyzer -o prgs/Pam_Jearl-Ten.prg sids/Pam_Jearl-Ten.sid
./sid2analyzer -nc -o prgs/Pam_Jearl-Ten_nc.prg sids/Pam_Jearl-Ten.sid
./sid2analyzer -o prgs/We_Come_in_PETSCII.prg sids/We_Come_in_PETSCII.sid
./sid2analyzer -nc -o prgs/We_Come_in_PETSCII_nc.prg sids/We_Come_in_PETSCII.sid

rm -f sid2analyzer
