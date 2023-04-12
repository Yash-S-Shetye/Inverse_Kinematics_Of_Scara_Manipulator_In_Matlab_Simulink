%main code
clear all;
close all;
clc

%Sample time
Ts=0.001;

%Defining entire time duration
t = (0:Ts:4.0)';

%Storing size of time vector in variable n1
n1 = size(t,1);

%Calling the generate trajectory function to generate the end effector
%trajectory
[p, pd, pdd] = generate_trajectory(Ts);

%Plotting end effector position, velocity and acceleration values

%Position Plot
subplot(3,1,1);
plot(t,p);
xlabel('time');
ylabel('Position');
legend('pos_x', 'pos_y', 'pos_z');
axis([t(1) t(n1) -1 1]);

%Velocity Plot
subplot(3,1,2);
plot(t,pd);
xlabel('time');
ylabel('Position');
legend('vel_x', 'vel_y', 'vel_z');
axis([t(1) t(n1) -1 1]);

%Acceleration Plot
subplot(3,1,3);
plot(t,pdd);
xlabel('time');
ylabel('Position');
legend('acc_x', 'acc_y', 'acc_z');
axis([t(1) t(n1) -10 10]);
