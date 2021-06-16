#!/bin/sh

storageBacket='backet/'

while :
do

for i in $(ls ../plots/ | grep .plot); do
        #curl $(cat ./bot-telegram/url)"Start move file =>"$i 2>/dev/null
        gsutil cp ../plots/$i gs://$storageBacket$i >> plots2storage.log
        rm ../plots/$i >> plots2storage.log
        #curl $(cat ./bot-telegram/url)"Moving ended =>"$i 2>/dev/null
done

done