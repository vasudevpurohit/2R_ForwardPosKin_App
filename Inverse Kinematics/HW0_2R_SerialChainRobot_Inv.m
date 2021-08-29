%%HW0 Serial Chain Robot - Forward & Inverse Kinematics
%Inverse Kinematics

% clearing workspace
clear workspace

%% defining the inputs
L = [3,2]; %linkage lengths
t = (0:1:360);
sigma = 1;

%% creating data for the end effector when the end effector moves along a 
% circle of radius 3cm and centered at (1,0) & degree (t) increments = 1deg 
xe = (1+(3*cosd(t)));
ye = 3*sind(t);

%% calculating the joint angles using the reverse kinematic function
[theta1,theta2] = RR_InvPosKin(L,xe,ye,sigma);

%% finding the coordinates for the first revolute joint
x1 = L(1)*cosd(theta1);
y1 = L(1)*sind(theta1);

%% checking if the end effector coordinates match the input
Xe = (L(1)*cosd(theta1))+(L(2)*cosd(theta1+theta2));
Ye = (L(1)*sind(theta1))+(L(2)*sind(theta1+theta2));

%% linkage plot for the entire motion of the end effector (only uncrossed)

subplot(3,1,1);
plot(Xe,Ye,'ro');
axis equal
hold on
plot(x1,y1,'bo');
hold on
for i = (1:1:length(xe))
    plot([0,x1(1,i)],[0,y1(1,i)],'k-');
    hold on
    plot([x1(1,i),Xe(1,i)],[y1(1,i),Ye(1,i)],'c-');
end
legend('End Effector','Revolute Joint','Link 1','Link 2');
xlabel('X (in cm)');
ylabel('Y (in cm)');
title('Inverse Kinematic Analysis');
hold off

%% variation of theta with the polar angle of the end effector
subplot(2,1,2);
plot(t,theta1,'b.');
axis equal
hold on
plot(t,theta2,'r.');
xlabel('Polar angle in deg');
ylabel ('Theta in deg');
title('Revolute angles variation v/s t');
legend('Theta1','Theta2');