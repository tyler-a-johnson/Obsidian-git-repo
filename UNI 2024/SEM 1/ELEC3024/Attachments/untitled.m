% Transfer Function Definition
s = tf('s');
J = 0.0013; % kg\*m^2
b = 3.2848e-5; % N\*m\*s
K = 0.318; % Nm/A
R = 3; % Ohms
L = 380e-6; % Henrys
P_motor = K / ((J*s + b) * (L*s + R) + K^2);

% Controller
Ein = 12;
Ea = 6;
D = Ea/Ein;
p_conv = D;

% Plant
plant = p_conv * P_motor;


% Sampling Time
Ts = 0.001; % Specify the desired sampling time

% Convert continuous-time plant to discrete-time
plant_d = c2d(plant, Ts, 'zoh');



% PI Controller
Kp = 0.4;
Ki = 10;
Kd = 0;
C = pid(Kp, Ki, Kd);


% Convert continuous-time PID controller to discrete-time
C_d = c2d(C, Ts, 'zoh');


% Closed-loop system with discrete-time models
sys_cl_d = feedback(C_d * plant_d, 1);


% Simulate and plot the step response
t = 0:Ts:0.5;
step(sys_cl_d, t)


% Display step response information
info = stepinfo(sys_cl_d)
disp(plant_d);
