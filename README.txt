Hodoboc-Velescu Tudor 315CC

Tema 2 MN - In spatele unui motor cautare

Cerinta 1 - Algoritmul Iterative
Functia Iterative a fost implementata urmandu-se descrierea data.
Se deschide fisierul dat de parametrul 'nume'. Se citeste numarul
de pagini N. Matricea A este initializata cu 0 pentru a usura iteratia.
Se citeste fiecare linie, datele fiind procesate conform explicatiilor
date: nodul curent, numarul de noduri adiacente si nodurile respective.
Valorile din matricea A corespunzatoare muchiilor date sunt completate cu 1.
Mai departe, conform algoritmului, se formeaza vectorul L de link-uri,
matricea M si se aplica algoritmul pentru a se obtine vectorul R cu
acuratetea dorita, data de esp.

Cerinta 2 - Algoritmul Algebraic
Functia Algebraic a fost implementata urmandu-se descrierea data. Se
urmeaza aceiasi pasi ca la algoritmul Iterative pana la crearea matricei M.
Dupa ce se creaza aceasta, se foloseste functia PR_Inv pentru a se crea
inversa matricei I - d * M, cu I matricea unitate. Dupa care, conform
algoritmului, se creaza matricea R folosindu-se formula data in resurse.

Functia PR_Inv a fost implementata cu ajutorul observatiei facute in enunt.
Se foloseste functia gram_sc data la cursuri pentru a factoriza QR matricea
A. Dupa care se iau dimensiunile matricei A. Se initializeaza vectorul B cu
0. Pentru fiecare linie, se rezolva sistemul R(i) * B(i) = Q(i)' * I(i), unde
I este matricea unitate, folosindu-se functia SST implementata la laborator.

Cerinta 3 - Gradul de apartenenta
Functia PageRank a fost implementata prin folosirea functiilor create
anterior si ajustarea unor module folosite in functiile anterioare. Se
creaza veectorul R1 si R2 folosindu-se functiile Iterative si Algebraic
implementate la cerintele anterioare. Dupa, similar cerintelor anterioare,
este citit numarul N din fisierul 'nume'. Acesta se parcurge pentru a se
obtine valorile val1 si val2 necesare la crearea clasamentului. Dupa ce se
inchide fisierul de intrare, prin concatenarea sirului ".out" la parametrul
nume, folosindu-se functia strcat din limbajul Matlab, se deschide fisierul
de iesire, unde sunt scrise N, vectorul R1 si R2. Se foloseste functia
Apartenenta pentru a se crea gradul de apartenenta al paginii i. Se fooloseste
functia Matlab sort pentru a se sorta vectorul R si se pastreaza indicii
intiali ai vectorului. Se scriu paginile si rank-ul acestora in fisier, in
ordinea clasamentului, cate una pe linie.

Functia Apartenenta. Se creaza a si b astfel incat functia sa fie continua.
In functie de intervalul in care se afla x, functia intoarce 0 daca x este in
[0;val1], 1 daca se afla in intervalul (val2;1] sau a*x+b daca x este in
[val1;val2].

Mentiuni
Timp de implementare: aproximativ 5h, incluzand cateva pauze.
Nivel de dificultate: mediu.
Parere: Tema a fost super interesanta. Implementare ei a fost o mare placere.
Am reusit sa inteleg ce se intampla in spatele cautarii informatiilor pe
internet. Explicatiile au fost potrivite.
