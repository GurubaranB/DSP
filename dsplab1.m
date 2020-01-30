%a.sinusoidal
x=linspace(0,10*pi)
subplot(3,3,1)
plot(x/pi,sin(x))
ylim([-1.2,1.2])
grid on
title('Sinusoidal')
%b.square
subplot(3,3,2)
y=linspace(0,6*pi)
plot(y/pi,square(y))
title('Square')
grid on
ylim([-1.2,1.2])
%c.complex waveform
a=linspace(0,10)
b=linspace(10,20)
z=sin(complex(a,b))
subplot(3,3,3)
plot(abs(z))
title('Complex(abs)')
subplot(3,3,4)
plot(angle(z))
title('Complex(angle)')
%d.Unit impulse
ua=ones(1,1)
subplot(3,3,5)
stem(ua)
axis([0,4,0,1.2])
title('Unit impulse')
