tracking_inverse_second_order = pagetranspose(tracking_inverse_second_order);
tracking_theta_inverse_second_order = pagetranspose(tracking_theta_inverse_second_order);
figure('Name','Jacobian Inverse')
subplot(4,1,1); plot(t, pd(:,1)-tracking_inverse_second_order(:,1));
legend('q1');
subplot(4,1,2); plot(t, pd(:,2)-tracking_inverse_second_order(:,2));
legend('q2');
subplot(4,1,3); plot(t, pd(:,3)-tracking_inverse_second_order(:,3));
legend('d3');
subplot(4,1,4); plot(t, theta_d(:,1)-tracking_theta_inverse_second_order(:,1));
legend('q4');