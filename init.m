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