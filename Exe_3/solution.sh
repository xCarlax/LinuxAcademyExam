#!/bin/bash
 
database="$1";
matricola="$2";

awk -v matricola="$matricola" \
 '$1==matricola {print \
 "matricola aziendale: "$1 \
 "\ncellulare aziendale: "$2 \ 
 "\ncellulare personale: "$3 \
 "\nemail aziendale: "$4 \
 "\nemail personale: "$5}' \
 "$database" > corrisp
if [[ -s corrisp ]] ; then
   cat corrisp
else
   echo "Il dipendente ricercato non esiste nel database"
fi

