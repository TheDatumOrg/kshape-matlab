function [mem cent] = kShape_multivariate(A, K)

m=size(A, 1);
mem = ceil(K*rand(m, 1));
cent = zeros(K, size(A, 2), size(A, 3));

for iter = 1:100
    prev_mem = mem;
    for k = 1:K
	u_cent = kshape_centroid(mem, A, k, cent(k,:,:));
	for p = 1:size(A, 3)
		cent(k,:,p) = u_cent;
	end
    end

    for i = 1:m
        for k = 1:K
            dist = 1-max(NCCc_multivariate(A(i,:,:), cent(k,:,:)));
	    D(i,k) = dist;
        end
    end

    [val mem] = min(D,[],2);
    if norm(prev_mem-mem) == 0
	break;
    end
end
end


function centroid = kshape_centroid(mem, A, k, cur_center)

a = [];
for i=1:length(mem)
    if mem(i) == k
        if sum(cur_center) == 0
            opt_a = A(i,:, :);
	else
            [opt_a] = SBD_multivariate(cur_center, A(i,:,:));
        end
        a = [a; opt_a];
    end
end

if size(a,1) == 0;
    centroid = zeros(1, size(A,2)); 
    return;
end;

[m, ncolumns, channel]=size(a);
[Y mean2 std2] = zscore(a,[],2);

S = Y(:, :, 1)' * Y(:, :, 1);
P = (eye(ncolumns) - 1 / ncolumns * ones(ncolumns));
M = P*S*P;

[V D] = eigs(M,1);
centroid = V(:,1);

fd1 = [];
fd2 = [];
for p=1:size(a,1)
    ts1 = 0;
    ts2 = 0;
    for q=1:size(a,3)
        s1 = norm(a(p,:,q) - centroid', 'fro') * norm(a(p,:,q) - centroid', 'fro');
        s2 = norm(a(p,:,q) + centroid', 'fro') * norm(a(p,:,q) + centroid', 'fro');
        ts1 = ts1 + s1;
        ts2 = ts2 + s2;
    end
   fd1 = [fd1; sqrt(ts1)];
   fd2 = [fd2; sqrt(ts2)];
end

finddistance1 = sum(fd1);
finddistance2 = sum(fd2);

if (finddistance1<finddistance2)
    centroid = centroid;
else
    centroid = -centroid;
end

centroid = zscore(centroid);
end
