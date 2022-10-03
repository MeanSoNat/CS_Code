//Per-mutation
ng = 20; //number of gene
S1 = grand(1,'prm',1:ng)
S2 = grand(1,'prm',1:ng)

function Sn = Cross_over(S1, S2)
    ns = length(S1)
    ns2 = floor(ns/2)
    Sn11 = S1(1:ns2)
    Sn12 = S1;

    for iS = Sn11
        Sn12(find(Sn12==iS)) = []
    end
    Sn1 = [Sn11 Sn12];
    Sn21 = S2(1:ns2);
    Sn22 = S1;

    for iS = Sn21
        Sn22(find(Sn22==iS)) = [];
    end
    Sn2 = [Sn21 Sn22]
    Sn = [Sn1; Sn2]

endfunction

function Sn = mutation(S)
    // Sn of mutation(S)
    ns = length(S)
    nm = grand(1,1,'uin',1,5)

    for im = 1:nm
        rn =grand(1,'prm',1:ns)
        sp1 = S(rn(1));
        sp2 = S(rn(2));
        Sn = S;
        Sn(rn(1)) = sp2;
        Sn(rn(2)) = sp1;
        S = Sn
    end
   
endfunction

Sn = Cross_over(S1, S2)
S3 = Sn(1,:)
S4 = Sn(2,:)
S5 = mutation(S3)
S6 = mutation(S4)
Snew = [S1;S2;S3;S4;S5;S6]
disp(Snew)