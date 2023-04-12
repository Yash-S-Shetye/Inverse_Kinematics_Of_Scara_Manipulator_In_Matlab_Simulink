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
