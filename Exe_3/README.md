## Esercizio 3 - (Da 0 a 10 punti)

Nel database `rubrica telefonica` sono presenti le informazioni di contatto dei
dipendenti dell'azienda. Il formato è semplice testo e le informazioni sono
memorizzate in sequenza con il seguente ordine:

```text
(matricola aziendale, numero di cellulare aziendale, numero di cellulare
 personale, email aziendale, email personale)
```

Il candidato realizzi uno script bash denominato `solution.sh` in grado di
stampare in output i dati di contatto (uno per riga) della persona ricercata.
Se il dipendente non esiste nel database, lo script dovrà stampare
un messaggio informativo e concludersi egualmente con successo.
Per massimizzare il riuso dello script esso verrà invocato da riga di comando,
fornendo in input come primo parametro il percorso del file contenente il
database dei contatti, e come secondo parametro la matricola del dipendente da
ricercare.

Esempio di database:

```text
m.rossi +393331234567 +393451122334 mro@academy.org mario.rossi@example.net
l.bianchi +393219876543 +393331020304 lba@academy.org lubia@fuzzymail.io
```

Esempio di uso:

```shell
$ ./solution.sh database matricola
```

Esempio di output
```text
m.rossi
+393331234567
+393451122334
mro@academy.org
mario.rossi@example.net

-----  oppure  -----

Il dipendente ricercato non esiste nel database
```

> BONUS POINTS (Da 0 a 5 punti): Il candidato produca un output dove ogni riga
> è preceduta dalla descrizione del campo stampato. Ad esempio:
>
> ```text
> matricola aziendale: m.rossi
> cellulare aziendale: +393331234567
> cellulare personale: +393451122334
> email aziendale: mro@academy.org
> email personale: mario.rossi@example.net
> ```