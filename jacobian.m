function J = jacobian(q)

% Defined link length values
a1=0.5;
a2=0.5;
d0=1;

% Assigning individual joint values to the corresponding rows of the
% q(angle) being taken as input
q1 = q(1);
q2 = q(2);
d3 = q(3);
q4 = q(4);

% Jacobain matrix obtained for Scara Manipulator from theory
% Eliminating the 4th and 5th rows since they are dependent rows and make
% the matrix singular and also since inverse can only be taken of square
% matrix
J=[(-a1*sin(q1)-a2*sin(q1+q2)),-a2*sin(q1+q2),0,0;
(a1*cos(q1)+a2*cos(q1+q2)),a2*cos(q1+q2),0,0;
0,0,1,0;
%0,0,0,0;
%0,0,0,0;
1,1,0,1];

end