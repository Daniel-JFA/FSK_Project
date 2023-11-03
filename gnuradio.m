clc %para borrar la ventana de comandos
close all %para cerrar todas las ventanas excepto la ventana de comandos
clear all %para borrar todas las variables de la memoria
fc1=input('Ingrese la frecuencia de la primera portadora de onda sinusoidal:');
fc2=input('Ingrese la frecuencia de la segunda portadora de onda sinusoidal.:');
fp=input('Ingrese la frecuencia del pulso binario periódico (Mensaje):');
amp=input('Ingrese la amplitud (tanto para portadora como para mensaje de pulso binario):');
amp=amp/2;
t=0:0.001:1; % Para configurar el intervalo de muestreo
c1=amp.*sin(2*pi*fc1*t);% Para generar la primera onda sinusoidal portadora
c2=amp.*sin(2*pi*fc2*t);% Para generar una segunda onda sinusoidal portadora
subplot(4,1,1); %Grafica de la onda portadora

plot(t,c1)
xlabel('Tiempo')
ylabel('Amplitud')
title('Onda portadora 1')
subplot(4,1,2) %Graficar la onda portadora
plot(t,c2)
xlabel('Tiempo')
ylabel('Amplitud')
title('Onda portadora 2')
m=amp.*square(2*pi*fp*t)+amp;%Para generar un mensaje de onda cuadrada
subplot(4,1,3) %Para graficar el Pulso Binario Cuadrado (Mensaje)
plot(t,m)
xlabel('Tiempo')
ylabel('Amplitud')
title('Pulsos de mensajes binarios')

for i=0:1000 %aquí estamos generando la onda modulada
if m(i+1)==0
mm(i+1)=c2(i+1);
else
mm(i+1)=c1(i+1);
end
end
subplot(4,1,4) %Para graficar la onda modulada
plot(t,mm)
xlabel('Tiempo')
ylabel('Amplitud')
title('Onda Modulada')
