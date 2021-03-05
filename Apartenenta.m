function y = Apartenenta(x, val1, val2)
	% Functia care primeste ca parametrii x, val1, val2 si care calculeaza valoarea functiei membru in punctul x.
	% Stim ca 0 <= x <= 1

  % Se calculeaza a si b astfel
  % incat functia sa fie liniara
  a = 1 / (val2 - val1);
  b = val1 / (val1 - val2);

  % Daca x apartine intervalului [0;val1)
  % se intoarce 0
  if (x >= 0 && x < val1)
    y = 0;
  endif

  % Daca x apartine in intervalului [val1;val2]
  % atunci se intoarce a * x + b
  if (x >= val1 && x <= val2)
    y = a * x + b;
  endif

  % Daca x apartine intervalului (val2;1]
  % atunci se intoarce 1
  if (x > val2)
    y = 1;
  endif
endfunction
