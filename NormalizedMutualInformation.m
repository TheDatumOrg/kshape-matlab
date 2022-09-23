function z = NormalizedMutualInformation(x, y)
assert(numel(x) == numel(y));
n = numel(x);
x = reshape(x,1,n);
y = reshape(y,1,n);

l = min(min(x),min(y));
x = x-l+1;
y = y-l+1;
k = max(max(x),max(y));

idx = 1:n;
Mx = sparse(idx,x,1,n,k,n);
My = sparse(idx,y,1,n,k,n);

Pxy = nonzeros(Mx'*My/n);
Hxy = -dot(Pxy,log2(Pxy));

Px = nonzeros(mean(Mx,1));
Py = nonzeros(mean(My,1));
Hx = -dot(Px,log2(Px));
Hy = -dot(Py,log2(Py));

MI = Hx + Hy - Hxy;

z = sqrt((MI/Hx)*(MI/Hy));
z = max(0,z);
