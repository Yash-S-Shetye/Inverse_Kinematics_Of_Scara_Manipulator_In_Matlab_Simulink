# Inverse_Kinematics_Of_Scara_Manipulator_In_Matlab_Simulink

Simulation of inverse kinematics of a scara manipulator in MATLAB Simulink software.

The project is divided into 3 folders having 2 folders in each of them - 

1.) #Using jacobian Inverse, Transpose and Pseudo-inverse

  a) Part 1 contains files for simulating inverse kinematics using jacobian inverse and jacobian transpose.

  b) Part 2 contains files for simulating inverse kinematics using jacobian pseudo-inverse.

2.) #Using Second Order Algorithm

   a)  Part 1 contains files for simulating inverse kinematics using second algorithm and jacobian inverse.
   
   b) Part 2 contains files for simulating inverse kinematics using second algorithm and jacobian pseudo-inverse.
   
3.) #Trajectory Generation and Inverse Dynamic Control

    a) Part 1 contains files for generating trajectory for the scara manipulator.
    
    b) Part 2 contains file for simulating inverse dynamic control for scara manipulator.


Steps to run simulation for all parts - 

1.) Create Part 1 and Part 2 folders with all included files and the data mat file and put all in one folder.

2.) For 1.) and 2.) change location address of the mat file - "kinematic_traj.mat" in the respective init files to wherever the file is placed on your desktop.

3.) Run the init file in matlab.

4.) To visualize the results, run the visualize_results.m file
