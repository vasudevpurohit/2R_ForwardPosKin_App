%%clearing workspace
clear

%%HW0 Serial Chain Robot - Forward & Inverse Kinematics

%defining the inputs
L = [3,2];
t = 15;

[Xe,Ye,X1,Y1] = RR_ForwardPosKin(L,t);
plot([0 X1],[0 Y1],'r-');
hold on
plot([X1 Xe],[Y1 Ye],'b-');
hold on
plot(X1,Y1,'c*');
hold on
plot(Xe,Ye,'k*');