clear all
close all
clc
vrclear
vrclose

a1 = 0.5;
a2 = 0.5;
d0 = 1;

load('..\kinematic_traj.mat');
clik_phi_inverse;
sim('clik_phi_inverse.mdl', t);
plot_outputs_inverse;
%addpath('C:\Users\DELL\Desktop\Masters Studies\Foundation of Robotics\project1\student\code\visualization')
%SCARA_VR_VISUALIZE(squeeze(q(:,1,:)), true);

figure(1)
subplot(4,1,1); plot(t, pd(:,1)-tracking_pseudo_inverse(:,1));
subplot(4,1,2); plot(t, pd(:,2)-tracking_pseudo_inverse(:,2));
subplot(4,1,3); plot(t, pd(:,3)-tracking_pseudo_inverse(:,3));
subplot(4,1,4); plot(t, theta_d(:,1)-tracking_theta_pseudo_inverse(:,1));