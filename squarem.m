function[x,y,z]=squarem()

%% 25 coordinates on the xyz axes along which the end effector is to follow

y=[-0.03 -0.03 -0.03 -0.03 -0.03 -0.03 -0.03 -0.02 -0.01 -0.00 0.01 0.02 0.03 0.03 0.03 0.03 0.03 0.03 0.03 0.02 0.01 0.00 -0.01 -0.02 -0.03 ] ;

z=[0.17 0.18 0.19 0.20 0.21 0.22 0.23 0.23 0.23 0.23 0.23 0.23 0.23 0.22 0.21 0.20 0.19 0.18 0.17 0.17 0.17 0.17 0.17  0.17 0.17];

x=0.1*ones(1,length(y));

plot(y,z)

end


