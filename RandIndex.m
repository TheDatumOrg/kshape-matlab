function RI=RandIndex(c1,c2)
    C=Contingency(c1,c2);

    n=sum(sum(C));
    nis=sum(sum(C,2).^2);
    njs=sum(sum(C,1).^2);

    t1=nchoosek(n,2);
    t2=sum(sum(C.^2));
    t3=.5*(nis+njs);

    A=t1+t2-t3;

    RI=A/t1;
end

function Cont=Contingency(Mem1,Mem2)
    Cont=zeros(max(Mem1),max(Mem2));

    for i = 1:length(Mem1);
        Cont(Mem1(i),Mem2(i))=Cont(Mem1(i),Mem2(i))+1;
    end
end
