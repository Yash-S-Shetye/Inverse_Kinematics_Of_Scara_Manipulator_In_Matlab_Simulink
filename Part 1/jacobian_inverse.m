function J_inverse = jacobian_inverse(J)

j_inverse = J\eye(size(J));

J_inverse = double(j_inverse);
