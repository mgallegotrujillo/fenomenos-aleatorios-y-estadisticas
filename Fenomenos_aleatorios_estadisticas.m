clear all 
clc
close all

%Análisis de correlación de señales
n=0:99;
% Generando señales de prueba

xn=ones(1,100)

snr=5
hold on

xk=fft(xn);
figure('Name','Graficos Caracteristicos x(n)');
subplot(2,1,1);
stem(n,abs(xk),'c');
title('Espectro de magnitud');

espreal=real(xk);
espimg=imag(xk);
magnitud=abs(xk);
fase=angle(xk);

%fase
subplot(2,1,2);
stem(n,fase,'g');
title('Espectro de fase');

%%%%%%%%%%%%%%%%%%%%%%%%%%55
M=[]
V=[]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% xk=fft;

for snr=3:3:10
   
hold on
xn=awgn(xn, snr);
M=[M median(xn)];
V=[V var(xn)];
xk=fft(xn);
figure('Name','Graficos Caracteristicos x(n)');
subplot(2,1,1);
stem(n,abs(xk),'c');
title('Espectro de magnitud');

espreal=real(xk);
espimg=imag(xk);
magnitud=abs(xk);
fase=angle(xk);

%fase
subplot(2,1,2);
stem(n,fase,'g');
title('Espectro de fase');
end
M
V


