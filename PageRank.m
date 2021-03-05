function [R1 R2] = PageRank(nume, d, eps)
	% Calculeaza indicii PageRank pentru cele 3 cerinte
	% Scrie fisierul de iesire nume.out

  % Se aplica functia Iterative pentru a se obtine vectorul R1
  R1 = Iterative(nume, d, eps);

  % Se aplica functia Algebraic pentru a se obtine vectorul R2
  R2 = Algebraic(nume, d);

  % Se deschide fisierul dat de parametrul nume
  file = fopen(nume, 'r');

  % Se citeste numarul de pagini analizate N
  N = fscanf(file, "%f", 1);

  % Se parcurge fisierul pana la ultimele doua randuri
  for i = 1 : N + 1
    val1 = fgetl(file);
  endfor

  % Se citesc val1 si val2 din fisier
  val1 = fscanf(file, "%f", 1);
  val2 = fscanf(file, "%f", 1);

  % Se inchide fisierul
  fclose(file);

  % Se concateneaza sirul ".out"
  % pentru a se obtine fiserul de iesire
  nume_output = strcat(nume, ".out");

  % Se deschide fisierul de iesire
  output = fopen(nume_output, 'w');

  % Se scrie numarul de link-uri analizate
  fprintf(output, "%i\n\n", N);

  % Se scrie vectorul R1
  fprintf(output, "%.6f\n", R1);
  fprintf(output, "\n");

  % Se scrie vectorul R2
  fprintf(output, "%.6f\n", R2);
  fprintf(output, "\n");

  % Pentru fiecare valoare a vecetorului R2
  % se calculeaza 'importanta' acesteia
  % folosindu-se functia Apartenenta
  for i = 1 : N
    R(i) = Apartenenta(R2(i), val1, val2);
  endfor

  % Se sorteaza vectorul R descrescator
  % Se pastreaza indicii initiali ai vectorului
  % in raport cu pozitia lor actuala in vectorul nods
  [R, nods] = sort(R, 'descend');

  % Se scrie pe cate o linia clasamentul paginilor
  % dupa importanta acestora
  for i = 1 : N
    fprintf(output, "%i %i %.6f\n", i, nods(i), R(i));
  endfor

  % Se inchide fisierul de iesire
  fclose(output);
endfunction
