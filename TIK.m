%% Algebraic inverse kinematics for the 5 DoF robotic arm, RBEC.The algorithm converts the spatial dimensional end effector trajectory space to a 5 dimensonal joint variable space to acheive a desired trajectory.

function[]=TIK()
%% The function has no arguments since its returns the 4x1 angle vector in each iteration by calling other functions.
clear all;

%% Initializing the Y and X array to zeros
#Y=zeros(1,25);
#Z=zeros(1,25);

%% The for loop refers to the x,y,z cordinates provided on the squarem() function and computes the angles in each iteration using the AIK2 function.

for idx=1:25

  [x,y,z]=squarem();

   #[x,y,z]=circle(0.15,35);
     %[x,y,z]=triangle();
% The XYZ inializations below call the xyz cordinates in the squarem function in each iteration
    X(idx)=x(idx);
    Y(idx)=y(idx);
    Z(idx)= z(idx);

   x=AIK(X(idx),Y(idx),Z(idx))
    angle1 = x(1,1);
    angle2 = x(2,1);
    angle3 = x(3,1);
    angle4 = x(4,1);




idx=idx+1

 mov_servo(angle1,angle2,angle3,angle4);



end

end

