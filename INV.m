function angles = INV(x, y, z)
% Performs inverse kinematics to compute the four angle values for a robot arm with four servos

% Define the length of each arm segment
L1=0.131;
L2=0.104;
L3= 0.098;
L4 = 0.04;

% Define the position of the end effector
P = [x; y; z];

% Compute the first angle value
theta1 = atan2(P(2), P(1));

% Compute the second angle value
D = (P(1)^2 + P(2)^2 + (P(3) - L1)^2 - L2^2 - L3^2 - L4^2) / (2 * L3 * L4);
theta3 = atan2(-sqrt(1 - D^2), D);
theta2 = atan2(P(3) - L1, sqrt(P(1)^2 + P(2)^2)) - atan2(L4 * sin(theta3), L3 + L4 * cos(theta3));
theta4 = atan2(P(2)*cos(theta1) - P(1)*sin(theta1), P(1)*cos(theta1)*cos(theta2) + P(2)*sin(theta1)*cos(theta2) - (P(3)-L1)*sin(theta2));

% Return the four angle values in a column vector
angle1 = abs(rad2deg(theta1));
angle2 = abs(rad2deg(theta2));
angle3 = abs(rad2deg(theta3));
angle4 = abs(rad2deg(theta4));
angles = [angle1; angle2; angle3; angle4];
end

