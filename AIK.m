%% Algebraic inverse kinematics for the 5 DoF robotic arm, RBEC.The algorithm converts the spatial dimensional end effector space to 5 dimensonal joint variable space to acheive desired trajectory.

function[Ang_vector]=AIK(xd,yd,zd)

%Link length 2
L2=0.104;
%Link length 3
L3= 0.098;

d0=0.131;

%% First angle
ang1radians=atan2(yd,xd); %%converts degrees to radian
ang1=rad2deg(ang1radians); %%converts degrees to radian

if (ang1>90)
     fprintf('Computed angle for the first joint is out of reach since it is greater than 180\n')
     ang1=180;

elseif (ang1<(-90))
     fprintf('Computed angle for the first joint is out of reach since it is less than 0\n')
     ang1=0;

elseif (ang1<0&&ang1>=(-90))
     ang1=90-abs(ang1);

elseif (ang1>0&&ang1<=(90))
     ang1=90+ang1;

else
     ang1=90;
end

r=sqrt((xd^2)+(yd^2));

s=zd-d0;

D =(((r^2)+(s^2))-((L2^2)+(L3^2)))/(2*L2*L3);

%% Third angle
ang3radians=atan2((D),(real(sqrt(1-(D^2)))));
ang3=rad2deg(ang3radians);

if (ang3>90)
     fprintf('Computed angle for the first joint is out of reach since it is greater than 180\n')
     ang3=180;

elseif (ang3<(-90))
     fprintf('Computed angle for the first joint is out of reach since it is less than 0\n')
     ang3=0;

elseif (ang3<0&&ang3>=(-90))
     ang3=90-abs(ang3);

elseif (ang3>0&&ang3<=(90))
     ang3=90+ang3;

else
     ang3=90;

end

%% Second angle and Fourth angle
ang2radians=atan2(s,r)- atan2((L3*sin(ang3radians)),(L2+(L3*cos(ang3radians))));
ang2=rad2deg(ang2radians);

ang4=abs(ang2-ang3);


% Conditions for angle four
if (ang4<0)
    fprintf('Computed angle for the second joint is out of reach since it is less than zero\n')
    ang4=0;

end

if (ang4>180)
    fprintf('Computed angle is out of reach for second joint since is is more than 180\n')
    ang4=180;

end

% Conditions for angle two
if (ang2<0)
    fprintf('Computed angle for the second joint is out of reach since it is less than zero\n')
    ang2=0;

end

if (ang2>180)
    fprintf('Computed angle is out of reach for second joint since is is more than 180\n')
    ang2=180;

end

%% Checking the condition of the four angles.If any is negative, a message is sent to the user

if ((ang1||ang2||ang3||ang4) < 0)
    fprintf('The position inputs cannot be fulfilled since some of the angles are negative\n ')

else
    Ang_vector=[ang1;ang2;ang3;ang4]; %%Returns a 4x1 matrix.

end


end

