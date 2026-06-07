#!/bin/bash

echo "Test Phase 0 – build sid2analyzer"
echo "================================="

(cd ../src && make clean && make && cp sid2analyzer ../test/ && make clean)
if [ $? -ne 0 ]; then echo "Test Phase 0 failed." && exit 1; fi

echo
echo "Test Phase 1 – should succeed"
echo "============================="
./sid2analyzer -o prgs/Easyriff.prg sids/Easyriff.sid
if [ $? -ne 0 ]; then echo "Test Phase 1 failed." && exit 1; fi
./sid2analyzer -nc -o prgs/Easyriff_nc.prg sids/Easyriff.sid
if [ $? -ne 0 ]; then echo "Test Phase 1 failed." && exit 1; fi

./sid2analyzer -o prgs/Pam_Jearl-Ten.prg sids/Pam_Jearl-Ten.sid
if [ $? -ne 0 ]; then echo "Test Phase 1 failed." && exit 1; fi
./sid2analyzer -nc -o prgs/Pam_Jearl-Ten_nc.prg sids/Pam_Jearl-Ten.sid
if [ $? -ne 0 ]; then echo "Test Phase 1 failed." && exit 1; fi

./sid2analyzer -o prgs/We_Come_in_PETSCII.prg sids/We_Come_in_PETSCII.sid
if [ $? -ne 0 ]; then echo "Test Phase 1 failed." && exit 1; fi
./sid2analyzer -nc -o prgs/We_Come_in_PETSCII_nc.prg sids/We_Come_in_PETSCII.sid
if [ $? -ne 0 ]; then echo "Test Phase 1 failed." && exit 1; fi

./sid2analyzer -o prgs/And_Now_for_Something_Different.prg sids/And_Now_for_Something_Different.sid
if [ $? -ne 0 ]; then echo "Test Phase 1 failed." && exit 1; fi
./sid2analyzer -nc -o prgs/And_Now_for_Something_Different_nc.prg sids/And_Now_for_Something_Different.sid
if [ $? -ne 0 ]; then echo "Test Phase 1 failed." && exit 1; fi

echo
echo "Test Phase 2 – should fail with [ERROR]: sid_speed not 0x00000000"
echo "================================================================="
./sid2analyzer -o prgs/25_Hertz-0_Inspiration.prg sids/25_Hertz-0_Inspiration.sid
if [ $? -ne 1 ]; then echo "Test Phase 2 failed." && exit 1; fi
rm -f prgs/25_Hertz-0_Inspiration.prg

rm -f sid2analyzer

exit 0
