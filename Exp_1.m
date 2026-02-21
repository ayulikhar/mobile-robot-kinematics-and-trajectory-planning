% Aim: To generate and plot a joint space trajectory using cubic polynomial
clear, clc, close all;
q0 = 0;                    % Parameters
qf = 90;    
tf = 2;      
t = 0:0.02:tf;  
a0 = q0;                   % Cubic polynomial coefficients 
a1 = 0;
a2 = (3 * (qf - q0)) / (tf^2);
a3 = (-2 * (qf - q0)) / (tf^3);

% Trajectory equations
q   = a0 + a1*t + a2*t.^2 + a3*t.^3;  
qd  = a1 + 2*a2*t + 3*a3*t.^2;        
qdd = 2.*a2 + 6*a3.*t;                

% Plot
figure;
plot(t, q, 'LineWidth', 2); hold on;
plot(t, qd, 'LineWidth', 2);
plot(t, qdd, 'LineWidth', 2);
hold off;
grid on;
xlabel('Time (s)');
ylabel('Amplitude');
legend('Position (q)', 'Velocity (qd)', 'Acceleration (qdd)');
title('Cubic Polynomial Trajectory');