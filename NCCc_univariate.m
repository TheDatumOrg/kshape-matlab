function cc_sequence = NCCc_univariate(x,y)

if isrow(x)
    x=x';
end
if isrow(y)
    y=y';
end

len = length(x);

fftlength = 2^nextpow2(2*len-1);
r = ifft( fft(x,fftlength) .* conj(fft(y,fftlength)) );

r = [r(end-len+2:end) ; r(1:len)];

cc_sequence = r./(norm(x)*norm(y));
