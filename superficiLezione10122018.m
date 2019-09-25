%superficie di bezier
tau = 0:0.025:1; %tabulazione dell'intervallo sulla grglia cartesiana uguale per entr. le direzioni
ku = 3; %grado lungo u
kv = 4;
knotsu= brk2knt([0 1], ku); %ripeti ku volte il vettore [0 1], ho creato il vettore dei nodi per la direzione u
knotsv= brk2knt([0 1], kv);

Bu = spcol(knotsu, ku, tau);
Bv = spcol(knotsv, kv, tau);

[uu, vv] = meshgrid(tau, tau);
for i = 1: length(knotsu)-ku
    for j = 1:length(knotsv)-kv
        X = Bu(:,i)*Bv(:,j)'; %prodotto dei polinomi di bernstain per le direzioni u e v
        %surf
        mesh(uu,vv,X); %disegna la superfice
        hold on
        pause(1)
    end
end
        
