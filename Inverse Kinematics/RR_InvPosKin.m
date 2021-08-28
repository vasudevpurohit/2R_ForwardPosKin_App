%%HW0 Serial Chain Robot - Inverse Kinematics function definition

%%Defining the inverse motion kinematic equations

function [theta1,theta2] = RR_InvPosKin(L,xe,ye)
A = -2*xe*L(1);
B = -2*ye*L(1);
C = ((xe).^2) + ((ye).^2) + ((L(1))^2) - ((L(2))^2);
theta1(1,:) = 2*atan2d(((-2*B)+ sqrt(((2*B).^2)-(4*(((C).^2)-((A).^2))))),(2*(C-A)));
theta1(2,:) = 2*atan2d(((-2*B)- sqrt(((2*B).^2)-(4*(((C).^2)-((A).^2))))),(2*(C-A)));
theta2(1,:) = -theta1(1,:) + atan2d((ye-(L(1)*sind(theta1(1,:)))),(xe-(L(1)*cosd(theta1(1,:)))));
theta2(2,:) = -theta1(2,:) + atan2d((ye-(L(1)*sind(theta1(2,:)))),(xe-(L(1)*cosd(theta1(2,:)))));
end

