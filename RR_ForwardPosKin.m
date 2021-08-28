%%HW0 Serial Chain Robot - Forward Kinematics function definition

%%Defining the forward motion kinematic equations
function [xe,ye,x1,y1] = RR_ForwardPosKin(L,t)
theta2 = t;
theta1 = 20*sind((3*t)+60);
x1 = L(1)*cosd(theta1);
y1 = L(1)*sind(theta1);
xe = (L(1)*cosd(theta1))+(L(2)*cosd(theta1+theta2));
ye = (L(1)*sind(theta1))+(L(2)*sind(theta1+theta2));
end