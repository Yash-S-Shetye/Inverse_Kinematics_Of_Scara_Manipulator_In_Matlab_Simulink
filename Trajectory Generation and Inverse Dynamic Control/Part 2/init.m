clear all
close all
clc
vrclear
vrclose

%Reference joint values and taking theta_d, theta_d_dot and theta_d_dot_dot reference values as 0
q_values = [-0.927293431584587;-1.28700579042062;0.700000000000000;2.21429922200521];
theta_d = zeros(4001,1);
theta_d_dot = zeros(4001,1);
theta_d_dot_dot = zeros(4001,1);

load('generated_traj.mat');
control;
sim('control.mdl', t);
visualize_results;
%SCARA_VR_VISUALIZE(squeeze(q(:,1,:)), false);
