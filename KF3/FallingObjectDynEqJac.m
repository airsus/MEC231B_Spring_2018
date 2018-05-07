function A = FallingObjectDynEqJac(x,delta,rho0,gamma,g)
% For falling mass, nonlinear density and aero model
eTerm = exp(-x(1)/gamma);
A = [1 delta 0;...
   -delta*rho0*eTerm*x(2)^2/gamma/x(3) ...
        1+2*delta*rho0*eTerm*x(2)/x(3) ...
        -delta*rho0*eTerm*x(2)^2/x(3)^2;...
   0 0 1];

