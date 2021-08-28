% %%clearing workspace
% clear all
% %%HW0 Serial Chain Robot - Forward & Inverse Kinematics
% 
% % Forward Kinematics
% 
% %defining the inputs
L = [3,2]; %linkage lengths
t = (0:1:360); 

[Xe,Ye,X1,Y1] = RR_ForwardPosKin(L,t);
plot(X1,Y1,'c*');
hold on
plot(Xe,Ye,'k*');
legend('Revolute Joint','End Effector Trajectory');
title('Forward Kinematics - 2R Serial chain');
xlabel('X');
ylabel('Y');