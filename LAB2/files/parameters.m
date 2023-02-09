%% LABORATORY 2 

% MODELLING OF DYNAMICAL SYSTEMS

% JAVIER LOPEZ INIESTA DIAZ DEL CAMPO
% LUKAS RAPP

%% Assignment 1

Rc_Rr = 1.15; % (Rc + Rr) Ohm
k = 0.051; % Nm/A
beta = 1.19 * 10^(-7); % Nm/s
L = 3.39*10^(-3); % H
J = 3.88*10^(-5); % kg*m^2

%% Assignment 2

% Wheel
d_wheel = 20; % diameter of the wheel (mm)
r_wheel = (d_wheel/2)*10^(-3); % radius of the wheel (m)
density = 2.7*10^(-3); % Aluminiumm density (kg/m^3)
thickness = 10*10^(-3); % Thickness of the wheel (m)
m_wheel = ((pi*r_wheel)^2)*thickness*density; % mass of the wheel (kg)
J_wheel = (1/2)*m_wheel*(r_wheel^2); % Inertia of the wheel (kg*m^2)

kr = 75; % Spring constant (N/m)
b = 25; % Friction coefficient (Ns/m)
m = 2; % mass (kg)

