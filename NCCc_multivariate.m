function cc_sequence = NCCc_multivariate(x,y)

if isrow(x)
    x=x';
end
if isrow(y)
    y=y';
end

x = squeeze(x);
y = squeeze(y);

len = length(x);

fftlength = 2^nextpow2(2*len-1);
r = ifft(fft(x,fftlength,1) .* conj(fft(y,fftlength,1)));
r = [r(end-len+2:end, :) ; r(1:len, :)];


if norm(vecnorm(x,2,2))*norm(vecnorm(y,2,2)) < 1e-9;
   cc_sequence = zeros(1, size(x, 1));
   return;
else
   cc_sequence = sum(r, 2)./(norm(vecnorm(x,2,2))*norm(vecnorm(y,2,2)));
end
