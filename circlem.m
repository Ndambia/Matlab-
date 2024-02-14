function [x,y,z] = circlem()
  clear all;
  xval =0.01;
  yval = 0;
  zval = 0.2;
  rad = 0.05;
  th =0: pi/25:2*pi;
  yunit = rad*cos(th) + yval;
  zunit = rad*sin(th) + zval;
  xunit =xval * ones(1, lenght(yunit));

  x = xunit; y =yunit; z = zunit;
  plot(x,y,x);
  grid;
  end
