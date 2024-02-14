function [x,y,z] = triangle()
% Define time vector
t = 0:0.01:10; % Time vector from 0 to 10 seconds with 0.01 second time step

% Define frequency and amplitude of sine wave
freq = 1; % Frequency of sine wave in Hz
amp = 0.1; % Amplitude of sine wave in meters

% Generate sine wave trajectory
x = amp*sin(2*pi*freq*t); % X-coordinate trajectory
y = amp*sin(2*pi*freq*t + pi/2); % Y-coordinate trajectory with 90 degree phase shift
z = amp*sin(2*pi*freq*t + pi); % Z-coordinate trajectory with 180 degree phase shift

% Plot trajectory
plot3(x, y, z)
xlabel('X')
ylabel('Y')
zlabel('Z')
title('Sine Wave Trajectory')
end
