%DFT

X_n = [1,1,0,0];
points = 5;
if points > length(X_n)
    X_n = [X_n zeros(1,(points-length(X_n)))];
end
N = length(X_n);
n = 0:(N-1);
k = 0:(N-1);

twiddle_factor_DFT = zeros(length(n), length(k));

for s = 1:length(n)
    for t = 1:length(k)
        twiddle_factor_DFT(s, t) = exp((-1i*2*pi*n(s)*(k(t)))/N);
    end
end

X_k = X_n * twiddle_factor_DFT;
%disp(X_k)



%IDFT

twiddle_factor_IDFT = inv(twiddle_factor_DFT);
disp(X_k * twiddle_factor_IDFT);

