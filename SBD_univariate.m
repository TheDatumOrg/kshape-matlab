function [dist shift yshift]= SBD_univariate(x,y)

if iscolumn(x)
    x=x';
end
if iscolumn(y)
    y=y';
end

X1=NCCc_univariate(x,y);

[m,d]=max(X1);

shift=d-max(length(x),length(y));
 
if shift < 0
        yshift = [y(-shift + 1:end) zeros(1, -shift)];
    else
        yshift = [zeros(1,shift) y(1:end-shift) ];
end

dist = 1-m;

end
