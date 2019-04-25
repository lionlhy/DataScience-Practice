clear all
clc
C=3*10^8;
wp=1.37*10^16;
wc=6.28*4.05*10^13;
e=1;%空气相对介电常数
n=10000;
p=(10*10^12-10*10^13)/(n-1);
W=10*10^12:p:10*10^13;
WP=ones(1,n)*wp;
WC=ones(1,n)*wc;
epx=ones(1,n);
epx=1-((WP.*WP)./(W.*(W+1i*WC)));
x=real(epx);
y=imag(epx);
%F=W./6.28;
%plot(F,x,'b.',F,y,'r.')
wavelength=C./W;%wave number

E=ones(1,n);
% kspp=W./C.*sqrt(real(epx).*E./(E+real(epx)));
% plot(real(kspp),W,'r.',W./C,W,'b.');
plot(wavelength/1e-6,real(epx),'r','LineWidth',3)
hold on,plot(wavelength/1e-6,imag(epx),'b','LineWidth',3)
xlabel('Wavelength(um)','fontsize',20)
ylabel('相对介电常数','fontsize',20)