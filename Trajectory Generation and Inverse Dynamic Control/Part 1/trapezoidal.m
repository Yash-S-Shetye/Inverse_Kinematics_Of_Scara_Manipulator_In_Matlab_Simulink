function [s,sd,sdd] = trapezoidal(q0, q1, t)
    
    %Extracting the end value from t
    tf = max(t(:));
    
    %Calculating velocity
    qc_dot = (q1-q0)/tf * 1.5;

    %Calculating tc
    tc = (q0 - q1 + qc_dot*tf)/qc_dot;

    %Calculating acceleration
    qc_dot_dot = qc_dot/tc;

    %Initializing p array
    pos = zeros(length(t), 1);
    vel = pos;
    acc = pos;
    
    %Defining for loop from 1 till length of time t
    for i = 1:length(t)

        %Storing time value at each value of i from 1 till length of t
        time = t(i);

        %Calculating and storing position, velocity and acceleration values
        %for each of the phases in the trapezoidal velocity profile

        if time >=0 && time <= tc
            % initial phase
            pos(i) = q0 + qc_dot_dot/2*time^2;
            vel(i) = qc_dot_dot*time;
            acc(i) = qc_dot_dot;
        elseif time > tc && time <= (tf-tc)
            % intermediate phase
            pos(i) = (q1+q0-qc_dot*tf)/2 + qc_dot*time;
            vel(i) = qc_dot;
            acc(i) = 0;
        else
            % final phase
            pos(i) = q1 - qc_dot_dot/2*tf^2 + qc_dot_dot*tf*time - qc_dot_dot/2*time^2;
            vel(i) = qc_dot_dot*tf - qc_dot_dot*time;
            acc(i) = -qc_dot_dot;
        end
    end
    
    %Assigning values to variables for returning in generate trajectory
    %function
    s = pos;
    sd = vel;
    sdd = acc;

end