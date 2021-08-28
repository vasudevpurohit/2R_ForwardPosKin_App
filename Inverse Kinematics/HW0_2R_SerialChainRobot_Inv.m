%%HW0 Serial Chain Robot - Forward & Inverse Kinematics
%Inverse Kinematics

% clearing workspace
clear all

%defining the inputs
L = [3,2]; %linkage lengths
t = (0:1:360); 

% creating data for the end effector when the end effector moves along a 
% circle of radius 3cm and centered at (1,0) & degree (t) increments = 1deg 
xe = (1+(3*cosd(t)));
ye = 3*sind(t);

[theta1,theta2] = RR_InvPosKin(L,xe,ye);
% x1 = L(1)*cosd(theta1);
% y1 = L(1)*sind(theta1);

Xe(:,:) = (L(1)*cosd(theta1(:,:)))+(L(2)*cosd(theta1(:,:)+theta2(:,:)));
Ye(:,:) = (L(1)*sind(theta1(:,:)))+(L(2)*sind(theta1(:,:)+theta2(:,:)));

plot(Xe(2,:),Ye(2,:),'r.');
hold on
plot(Xe(1,:),Ye(1,:),'b+');
hold on
plot(xe(1,:),ye(1,:),'ko');
axis equal