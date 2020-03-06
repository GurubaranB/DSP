function Xk = FFT_skynet(Xn)
    N = length(Xn);
    if N == 1
        Xk = Xn;
        return
    end
    Wn = exp((-2*pi*1i)/N);
    W = 1;
    Xe = zeros(1, (N/2));
    Xo = zeros(1, (N/2));
    for i = 0:((N/2)-1)
        %disp(i);
        Xe(1, i+1) = Xn((2*i)+1);
        Xo(1, i+1) = Xn((2*i)+2);    
    end
    Ye = FFT_skynet(Xe);
    Yo = FFT_skynet(Xo);
    
    k = [0: ((N/2)-1)];
    for j = 1:length(k)
        Xk(1, j) = Ye(1, j) + W*Yo(1, j);
        Xk(1, (j+(N/2))) = Ye(1, j) - W*Yo(1, j);
        W = W*Wn;
    end

end