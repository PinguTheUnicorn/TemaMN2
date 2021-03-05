function R = Iterative(nume, d, eps)
	% Functia care calculeaza matricea R folosind algoritmul iterativ.
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

  % Se face initializarea vectorului R0
  R0(1:N, 1) = 1 / N;

  % Se face prima iteratie a algoritmului
  R = d * M * R0 + ((1 - d) / N) * ones(N, 1);

  % Se continua aplicarea algoritmului
  % pana eroarea este mai mica decat cea tolerata
  while (norm(R - R0) >= eps)
    % In R0 se stocheaza matricea obtinuta la pasul anterior
    R0 = R;

    % Se aplica algoritmul pentru pasul curent
    R = d * M * R0 + ((1 - d) / N) * ones(N, 1);
  endwhile

  % Se returneaza vectorul de la pasul anterior
  % deoarece este primul care nu mai variaza destul cat sa influenteze
  R = R0;
endfunction
