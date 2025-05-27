clc; clear; close all;

% Función definida
f = @(x) 0.2 + 25*x - 200*x.^2 + 675*x.^3 - 900*x.^4 + 400*x.^5;

% Intervalo
a = 0;
b = 0.8;

% Valor real de la integral
I_real = 1.640533;

% Ingreso de número de subintervalos
n = input('Ingrese el número de subintervalos n: ');

% Paso
h = (b - a) / n;

% Vector de puntos
x = a:h:b;

% Evaluación de la función
y = f(x);

% Regla del trapecio compuesta
I_aprox = (h/2) * (y(1) + 2*sum(y(2:end-1)) + y(end));

% Cálculo de errores
error_abs = abs(I_real - I_aprox);
error_porcentual = (error_abs / I_real) * 100;

fprintf('\nResultado usando Trapecio compuesto con n = %d\n', n);
fprintf('Aproximación de la integral: %.6f\n', I_aprox);
fprintf('Error absoluto: %.6f\n', error_abs);
fprintf('Error porcentual: %.4f%%\n', error_porcentual);
