function R = Algebraic(nume, d)
	% Functia care calculeaza vectorul PageRank folosind varianta algebrica de calcul.
  % Se deschide fisierul dat de parametrul nume
  file = fopen(nume, 'r');

  % Se citeste numarul de noduri ale grafului
  N = fscanf(file, "%f", 1);

  % Se initializeaza matricea de adiacenta A cu 0
  A = zeros(N);

  % Se continua citirea fisierului
  % linie cu linie
  for i = 1 : N
    % Se citeste nodul pentru care
    % vor fi preluate valorile de adiacenta
    l = fscanf(file, "%f", 1);

    % Se citeste numarul de de noduri adiacente
    % pentru nodul curent
    L(i) = fscanf(file, "%f", 1);

    % Se citesc nodurile adiacente
    c = fscanf(file, "%f", L(i));

    % Se completeaza nodurile adiacente in matricea A
    A(l, c) = 1;
  endfor

  % Se inchide fisierul
  fclose(file);

  % Sunt selectate elementele care au
  % link-uri catre ele insasi
  v = find(diag(A));

  % Se reduce numarul de link-uri pentru
  % nodurile ce au link-uri catre ele insasi
  L(v) = L(v) - 1;

  % Elementele nenule ale diagonalei
  % sunt transformate in 0
  A = A - diag(diag(A));

  % Se initializeaza matricea K conform algoritmului
  K = zeros(N);
  for i = 1 : N
    K(i, i) = 1 / L(i);
  endfor

  % Se creaza matricea M conform algoritmului
  M = K * A;
  M = M';

  % Se creaza matricea inversa folosind algoritmul Gram-Schmidt
  inv_gs = eye(N) - d * M;
  inv_gs = PR_Inv(inv_gs);

  % Se aplica algoritmul pentru a se obtine matricea R
  R = inv_gs * ((1 - d) / N) * ones(N, 1);
endfunction
