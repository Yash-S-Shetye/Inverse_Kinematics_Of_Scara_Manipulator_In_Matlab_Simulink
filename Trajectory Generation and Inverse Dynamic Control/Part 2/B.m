function B_matrix = B(q)

a1 = 0.5;
a2 = 0.5;
l1 = 0.25;
l2 = 0.25;
m_l1 = 25;
m_l2 = 25;
m_l3 = 15;
I_l1 = 5;
I_l2 = 5;
I_l4 = 1;
k_r1 = 1;
k_r2 = 1;
k_r3 = 50;
k_r4 = 20;
I_m1 = 0.0001;
I_m2 = 0.0001;
I_m3 = 0.01;
I_m4 = 0.005;

B_matrix = zeros(4,4);

B_matrix(1,1) = I_l1 + m_l1*l1^2 + k_r1^2*I_m1 + I_l2 + m_l2*(a1^2 + l2^2 + 2*a1*l2*cos(q(2))) + I_m2 + m_l3*(a1^2 + a2^2 + 2*a1*a2*cos(q(2))) + I_l4;
B_matrix(1,2) = I_l2 + m_l2*(l2^2 + a1*l2*cos(q(2))) + k_r2*I_m2 + m_l3*(a2^2 + a1*a2*cos(q(2))) + I_l4;
B_matrix(1,4) = I_l4;
B_matrix(2,1) = B_matrix(1,2);
B_matrix(2,2) = I_l2 + m_l2*l2^2 + k_r2^2*I_m2 + m_l3*a2^2 + I_l4;
B_matrix(2,4) = I_l4;
B_matrix(3,3) = m_l3;
B_matrix(4,1) = B_matrix(1,4);
B_matrix(4,2) = B_matrix(2,4);
B_matrix(4,4) = I_l4;

end