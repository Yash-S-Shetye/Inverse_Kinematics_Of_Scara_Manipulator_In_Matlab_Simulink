function J_transpose = jacobian_transpose()
a1=0.5;
a2=0.5;

J=[(-a1*sind(th1)-a2*sind(th1+th2)),-a2*sind(th1+th2),0,0;
(a1*cosd(th1)+a2*cosd(th1+th2)),a2*cosd(th1+th2),0,0;
0,0,-1,0;0,0,0,0;0,0,0,0;1,1,0,-1];

J_transpose = transpose(J);