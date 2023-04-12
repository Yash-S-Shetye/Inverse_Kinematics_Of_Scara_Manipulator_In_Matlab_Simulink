function Jacobian_dot = jacobian_dot(q)

% Caling the jacobian function to get the jacobian matrix
J = jacobian(q);

% Finding the first order differential of jacobian matrix
Jacobian_dot = gradient(J,q);

end