function [p, pd, pdd] = generate_trajectory(Ts)

%Total time of trajectory
time_overall = (0:Ts:4.0)';
%Storing size of time vector
n = size(time_overall,1);

%Initializing the array for position
S = zeros(length(time_overall),3);

%Running loop from 1 to 4 for 4 waypoints
for i = 1:4
    
    %Time instants of each waypoints through which trajectory must pass
    tf = [0.0;0.6;2.0;3.4;4.0];

    %Array of all the waypoints
    pts = [0.0     0.0     0.5  0.8  0.8;
          -0.80   -0.80   -0.6  0.0  0.0;
           0.0     0.5     0.5  0.5  0.0];
     
     %Time duration for each s
     t = (0:Ts:tf(i+1)-tf(i))';
    
     %Taking norm of the difference of the final and initial waypoints at
     %each step
     norm_value = norm(pts(:,i+1)-pts(:,i));
    
    %Calling the trapezoidal function to generate the trapezoidal velocity profile for each
    %segment of the total trajectory
    s = trapezoidal(0,norm_value,t);

    %Storing size of s generated after each iteration for position
    m = size(s,1);

    %Storing total S value during each interation for total duration of 4
    %seconds
    if i == 1
        S = S + [s;ones(n-m,1)*norm_value]*((pts(:,i+1) - pts(:,i))')/norm_value;
    elseif i == 2
        S = S + [zeros(401,1);s;ones(n-(m+401),1)*norm_value]*((pts(:,i+1) - pts(:,i))')/norm_value;
    elseif i == 3
        S = S + [zeros(1601,1);s;ones(n-(m+1601),1)*norm_value]*((pts(:,i+1)-pts(:,i))')/norm_value;
    elseif i == 4
        S = S + [zeros(2801,1);s(1:m);ones(n-(m+2801),1)*norm_value]*((pts(:,i+1)-pts(:,i))')/norm_value;
    end
end

%Calculating end effectory position, velocity and acceleration values
p = ones(size(time_overall))*(pts(:,1))' + S;
pd = [diff(p)*10^3;zeros(1,3)];
pdd = [diff(pd)*10^3;zeros(1,3)];

end