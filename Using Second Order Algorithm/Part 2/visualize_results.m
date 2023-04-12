tracking_z_relax = pagetranspose(tracking_z_relax);
tracking_z_relax_theta = pagetranspose(tracking_z_relax_theta);
figure('Name','Jacobian Inverse')
subplot(4,1,1); plot(t, pd(:,1)-tracking_z_relax(:,1));
legend('q1');
subplot(4,1,2); plot(t, pd(:,2)-tracking_z_relax(:,2));
legend('q2');
subplot(4,1,3); plot(t, theta_d(:,1)-tracking_z_relax_theta(:,1));
legend('q4');