function [yshift]= SBD_multivariate(x,y)

if iscolumn(x)
    x=x';
end
if iscolumn(y)
    y=y';
end

X1=NCCc_multivariate(x,y);
[m,d]=max(X1);

shift=d-max(length(x),length(y));

if shift < 0
	t = permute(y(1, 1:end, :), [1, 3, 2]);
	yshift = [t(1, -shift+1:end) zeros(1, -shift)];
else
	t = permute(y(1, 1:end, :), [1, 3, 2]);
	yshift = [zeros(1,shift)  t(1, 1:end-shift)];
end

yshift = reshape(yshift, 1, size(y, 3), size(y, 2));
yshift = permute(yshift, [1, 3, 2]);
end
