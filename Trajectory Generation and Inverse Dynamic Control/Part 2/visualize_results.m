%Plot joint position errors, joint velocity errors and joint trajectory

%Plot joint position errors

%Plot for theta1
figure(1);
subplot(4,1,1);
plot(t,ans.joint_position_error(1,:));
title('Joint Position Errors')
xlabel('time');
ylabel('theta1 error');

%Plot for theta2
subplot(4,1,2);
plot(t,ans.joint_position_error(2,:));
xlabel('time');
ylabel('theta2 error');

%Plot for d3
subplot(4,1,3);
plot(t,ans.joint_position_error(3,:));
xlabel('time');
ylabel('d3 error');

%Plot for theta4
subplot(4,1,4);
plot(t,ans.joint_position_error(4,:));
xlabel('time');
ylabel('theta4 error');

%Plot joint velocity errors

%Plot for theta1
figure(2)
subplot(4,1,1);
plot(t,ans.joint_velocity_error(1,:));
title('Joint Velocity Errors')
xlabel('time');
ylabel('theta1 error');

%Plot for theta2
subplot(4,1,2);
plot(t,ans.joint_velocity_error(2,:));
xlabel('time');
ylabel('theta2 error');

%Plot for d3
subplot(4,1,3);
plot(t,ans.joint_velocity_error(3,:));
xlabel('time');
ylabel('d3 error');

%Plot for theta4
subplot(4,1,4);
plot(t,ans.joint_velocity_error(4,:));
xlabel('time');
ylabel('theta4 error');

%Plot joint trajectory

%Plot for theta1
figure(3)
subplot(4,1,1);
plot(t,ans.joint_trajectory(1,:));
title('Joint Trajectory')
xlabel('time');
ylabel('theta1');

%Plot for theta2
subplot(4,1,2);
plot(t,ans.joint_trajectory(2,:));
xlabel('time');
ylabel('theta2');

%Plot for d3
subplot(4,1,3);
plot(t,ans.joint_trajectory(3,:));
xlabel('time');
ylabel('d3');

%Plot for theta4
subplot(4,1,4);
plot(t,ans.joint_trajectory(4,:));
xlabel('time');
ylabel('theta4');





