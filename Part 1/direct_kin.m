function T = direct_kin(q)

a1=0.5;
a2=0.5;
d0 = 1;

q1=q(1);
q2=q(2);
d3=q(3);
q4=q(4);

%q1 = -pi/2:1:pi/2;
%q2 = -pi/2:1:pi/4;
%d3 = 0.25:1:1;
%q4 = -2*pi:1:2*pi;

%T = [cos(q1+q2+q4),sin(q1+q2+q4),0,a1*cos(q1)+a2*cos(q1+q2);
     %sin(q1+q2+q4),-cos(q1+q2+q4),0,a1*sin(q1)+a2*sin(q1+q2);
     %0,0,-1 -d3-d0;
     %0,0,0,1];

%R=[cos(q1+q2+q4),sin(q1+q2+q4),0;sin(q1+q2+q4),-cos(q1+q2+q4),0;0,0,-1;0 0 0];
T=[a1*cos(q1)+a2*cos(q1+q2);a1*sin(q1)+a2*sin(q1+q2);-d3-d0;1];

%O = double(T);


