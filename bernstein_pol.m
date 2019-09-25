function y = bernstein_pol(n, i, t)
%BERNSTEIN_POL: calcola l'i-esimo polinomio di grado n di Bernstein
%Input:
%-n: grado del polinimio
%-i: indice del polinomio
%-t: punto di valutazione
%Output:
%-y: valore in t dell'i-esimo polinomio di grado n di Bernstein

    y = nchoosek(n,i).*t.^(i).*((1-t).^(n-i));
end
