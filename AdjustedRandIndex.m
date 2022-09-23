function ari = AdjustedRandIndex(p1, p2)
    N = length(p1);
    [~, ~, p1] = unique(p1);
    N1 = max(p1);
    [~, ~, p2] = unique(p2);
    N2 = max(p2);

    for i=1:1:N1
        for j=1:1:N2
            G1 = find(p1==i);
            G2 = find(p2==j);
            n(i,j) = length(intersect(G1,G2));
        end
    end

    ssm = 0;
    sm1 = 0;
    sm2 = 0;
    for i=1:1:N1
        for j=1:1:N2
            ssm = ssm + nchoosek2(n(i,j),2);
        end
    end
    temp = sum(n,2);
    for i=1:1:N1
        sm1 = sm1 + nchoosek2(temp(i),2);
    end
    temp = sum(n,1);
    for i=1:1:N2
        sm2 = sm2 + nchoosek2(temp(i),2);
    end
    NN = ssm - sm1*sm2/nchoosek2(N,2);
    DD = (sm1 + sm2)/2 - sm1*sm2/nchoosek2(N,2);
    
    if (NN == 0 && DD==0)
       ari = 1;
    else
       ari = NN/DD;
    end


    function c = nchoosek2(a,b)
        if a>1
            c = nchoosek(a,b);
        else
            c = 0;
        end
    end
end
