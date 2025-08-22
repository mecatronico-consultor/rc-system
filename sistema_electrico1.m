%modelo matemático del circuito RC
% Vs = R*C*DVc + Vc    
%Vs es el voltaje de la fuente de alimentación
%R es la resistencia, C es la capacitancia, Vc es el voltaje en el
%capacitor
clear
clc
syms Vc(t) R C V
DVc = diff(Vc,t);
ED = R*C*DVc + Vc == V
Sol_gral = dsolve(ED)
R = 330; %ohms
C = 0.00005; %Farads
V = 30; %Volts
cond1 = Vc(0) == 0; %capacitor descargado
Sol_particular = dsolve(ED,cond1)
%pretty(Sol_particular)
Sol_particular_eval = subs(Sol_particular)
pretty(Sol_particular_eval)

t = linspace(0,30,100)%vector de tiempo de 0 a 30 seg
Vc = subs(Sol_particular_eval,t)%evaluación de la sol en el vector de tiempo
plot(t, Vc, 'LineWidth', 2); %graficar Vc(t) vs t
xlabel('Tiempo (t)')
ylabel('Vc(t)')
title('Respuesta del sistema Vc vs t');
grid on;