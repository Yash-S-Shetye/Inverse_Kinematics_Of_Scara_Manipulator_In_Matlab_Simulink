function Jacobian_dot = jacobian_dot(q)

% Caling the jacobian_z_relax function to get the jacobian matrix
J = jacobian_z_relax(q);

% Finding the first order differential of jacobian matrix
Jacobian_dot = gradient(J,q);

end