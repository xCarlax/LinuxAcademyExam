## Esercizio 4 - (Da 0 a 10 punti)

Al candidato è richiesto di realizzare un generatore di numeri casuali con il
comportamento qui definito:

- il generatore dovrà produrre singole cifre decimali, da 0 a 9, estremi inclusi
- il comando che implementa il generatore (che dovrà essere nominato
  `solution.sh`), una volta lanciato attenderà per un tempo indefinito e senza
  fare nulla la comparsa di un file sentinella chiamato `~/sentinel` (ovvero
  nella HOME dell'utente candidato)
- alla comparsa del file, il generatore inizierà a produrre un flusso infinito
  di cifre, una per riga
- la generazione di cifre terminerà quando il file sentinella sarà cancellato
- il generatore potrà essere attivato e disattivato più volte nel corso di una
  singola esecuzione, cioè il comando deve restare in esecuzione anche dopo la
  scomparsa del file sentinella e riprendere la generazione alla sua comparsa
  successiva

NOTA: come fonte di dati casuali si può usare `/dev/urandom` fornita dal sistema.

Esempio di utilizzo e dettagli:

```shell
$ ./solution.sh
```
Il comando parte e resta in esecuzione

Da un altro terminale, creare il file sentinella. Il generatore inizierà a
stampare sul suo output:

```text
0
2
5
7
2
5
3
6
6
1
...
```

Dall'altro terminale, eliminare il file sentinella. Il generatore smetterà di
stampare output ma resterà in esecuzione.

Successivamente, se dall'altro terminale si crea nuovamente il file sentinella,
il generatore riprenderà a stampare.