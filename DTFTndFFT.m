n=-1:3;
x=1:5;
k=0:500;
w=(pi/500)*k;
X=x*(exp(-j*pi/500))*(n'*k);
magX=abs(X);
angX=angle(X);
realX=real(X);
imagX=imag(X);

subplot(221);
plot(k/500,magX);
grid;
xlabel('Frequency in pi units ');
title('Magnitude part');


subplot(222);
plot(k/500,angX/pi);
grid;
xlabel('Frequency in pi units ');
title('Angle part');


subplot(223);
plot(k/500,realX);
grid;
xlabel('Frequency in pi units ');
title('Real part');


subplot(224);
plot(k/500,imagX);
grid;
xlabel('Frequency in pi units ');
title('Imaginary part');





%%%%%%                 FFT PART                  %%%%%%%%%%%%%%

N=256;
T=1/128;
k=0:N-1;
time=k*T;
f=0.25+2*sin(2*pi*5*k*T)+1*sin(2*pi*12.5*k*T)+1.5*sin(2*pi*20*k*T)+0.5*sin(2*pi*35*k*T);
subplot(211);
plot(time,f);
title('Signal sampled at 128Hz');
F=fft(f);
magF=abs([F(1)/N,F(2:N/2)/(N/2)]);
hertz=k(1:N/2)*(1/(N*T));
subplot(212);
stem(hertz,magF);
title('Frequency Components');































