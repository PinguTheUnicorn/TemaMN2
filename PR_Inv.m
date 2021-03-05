function B = PR_Inv(A)
	% Functia care calculeaza inversa matricii A folosind factorizari Gram-Schmidt
  % Se foloseste o functie auxiliara
  % pentru a factoriza QR matricea A
  [Q R] = gram_sc(A);

  % Se iau dimensiunile matricei A
  [N N] = size(A);

  % Se initializeaza matricea B cu 0
  B = zeros(N);

  % Se aplica algoritmul GS
  % pentru fiecare linie in parte
  for i = 1 : N
    % Se creaza coloana pentru
    % pasul curent a matricei unitate
    I = zeros(N, 1);
    I(i) = 1;

    % Se rezolva sistemul folosind
    % functia SST implemenatata
    % in cadrul laboratorului
    B(:, i) = SST(R, Q' * I);
  endfor
endfunction
