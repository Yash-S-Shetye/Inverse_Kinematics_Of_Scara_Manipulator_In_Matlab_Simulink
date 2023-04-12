clear all
close all
clc
vrclear
vrclose

load('../kinematic_traj.mat');
clik_inverse;
sim('clik_inverse.mdl', t);
clik_transpose;
sim('clik_transpose.slx', t);
%addpath('C:\Users\DELL\Desktop\Masters Studies\Foundation of Robotics\project1\student\code\visualization')
%SCARA_VR_VISUALIZE(squeeze(q(:,1,:)), true);

tracking_inverse = pagetranspose(tracking_inverse);
tracking_theta_inverse = pagetranspose(tracking_theta_inverse);
figure('Name','Jacobian Inverse')
subplot(4,1,1); plot(t, pd(:,1)-tracking_inverse(:,1));
legend('q1');
subplot(4,1,2); plot(t, pd(:,2)-tracking_inverse(:,2));
legend('q2');
subplot(4,1,3); plot(t, pd(:,3)-tracking_inverse(:,3));
legend('d3');
subplot(4,1,4); plot(t, theta_d(:,1)-tracking_theta_inverse(:,1));
legend('q4');

tracking_transpose = pagetranspose(tracking_transpose);
tracking_theta_transpose = pagetranspose(tracking_theta_transpose);
figure('Name','Jacobian Transpose')
subplot(4,1,1); plot(t, pd(:,1)-tracking_transpose(:,1));
legend('q1');
subplot(4,1,2); plot(t, pd(:,2)-tracking_transpose(:,2));
legend('q2');
subplot(4,1,3); plot(t, pd(:,3)-tracking_transpose(:,3));
legend('d3');
subplot(4,1,4); plot(t, theta_d(:,1)-tracking_theta_transpose(:,1));
legend('q4');