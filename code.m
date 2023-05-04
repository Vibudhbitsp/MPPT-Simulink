V_in = 17; % input voltage (V)
V_out = 48; % output voltage (V)
I_out = 2.083; % output current (A)
f_s = 5e3; % switching frequency (Hz)
Rated_power = 100; % rated power
deltaI = 0.03*(Rated_power/Vin); % current ripple factor
deltaV = 0.05*V_out; % voltage ripple factor

% Calculate the inductance value
L = (V_in * (V_out - V_in)) / (f_s * V_out * deltaI);

% Calculate the capacitance value
C = (I_out * (V_out - V_in)) / (V_out * f_s * deltaV);

disp(['Inductance value: ', num2str(L*1e6), ' uH']);
disp(['Capacitance value: ', num2str(C*1e6), ' uF']);
