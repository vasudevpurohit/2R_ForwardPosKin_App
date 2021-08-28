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
x1 = L(1)*cosd(theta1);
y1 = L(1)*sind(theta1);

Xe = (L(1)*cosd(theta1))+(L(2)*cosd(theta1+theta2));
Ye = (L(1)*sind(theta1))+(L(2)*sind(theta1+theta2));

plot(Xe(1,:),Ye(1,:),'ro');
axis equal
hold on
plot(x1(1,:),y1(1,:),'bo');
hold on
for i = (1:1:length(xe))
    plot([0,x1(1,i)],[0,y1(1,i)],'k-');
    hold on
    plot([x1(1,i),Xe(1,i)],[y1(1,i),Ye(1,i)],'c-');
end