#!/bin/sh
# Copyright 2020-2021 Anosh Khiyam, aka gyke69.
# zsign has its own usage so use it according to your need!
# FYI - do chmod +x zsign then (./zsign -h ) it wil show the usage of zsign.

echo 'Welcome to zsign iOS app signer'
# path to the 'ipa' directory! and the script does for each in the ipa folder.
cd /root/ipas/
for i in *.ipa ; do
#echo $i
#making zsign executable
chmod +x /root/zsign
# path to zsign compiled file, you Apple developer/Enterprise certificate.
/root/zsign -k "/root/foldercert/certificate.p12" -m "/root/foldercert/udid.mobileprovision" -p "1234" -z 9 -o /root/ipas/output/$i "$i" 
done
exit





