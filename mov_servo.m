
function[]= mov_servo(angle1, angle2, angle3, angle4)




%%Create arduino object
ar = arduino();

pins=ar.availablepins;
%%Initialize servo object
myServo1= servo(ar, "d3", "minpulseduration", 0.5e-3, "maxpulseduration", 2.4e-3);
myServo2 = servo(ar, "d9", "minpulseduration", 0.4e-3, "maxpulseduration", 2.40e-3);
myServo3 = servo(ar, "d11", "minpulseduration", 0.4e-3, "maxpulseduration", 2.4e-3);
myServo4 = servo(ar, "d10", "minpulseduration", 0.5e-3, "maxpulseduration", 2.4e-3);


%%home pos
#writePosition(myServo1, 0);
#writePosition(myServo2, 0);
#writePosition(myServo3, 0.5);
#writePosition(myServo4, 0.1);




 %%scaling angle to a value between 0 and 1
  angle_scaled1 = angle1/180;


  %%scaling angle to a value between 0 and 1
   angle_scaled2 = angle2/180;

 %%scaling angle to a value between 0 and 1
  angle_scaled3 = angle3/180;


 %%scaling angle to a value between 0 and 1
  angle_scaled4 = angle4/180;


 %%write position to each servo
  writePosition(myServo1, angle_scaled1);
  writePosition(myServo2, angle_scaled2);
  writePosition(myServo3, angle_scaled3);
  writePosition(myServo4, angle_scaled4);


end
