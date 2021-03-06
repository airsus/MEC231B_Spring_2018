function xp1 = FallingObjectDynEq(x,delta,rho0,gamma,g)
% For falling mass, nonlinear density and aero model
xp1 = [x(1)+delta*x(2);...
   x(2)+delta*(rho0*exp(-x(1)/gamma)*x(2)^2/x(3)-g);...
   x(3)];

