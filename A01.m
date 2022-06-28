% Ralphilou Tatoy
% 1607532
% Assignment #1
% September 6. 2019

% Exercise 1:
y = 2^5 / (2^5 - 1)
y = (1- (1 / 2^5))^(-1)
eq = ((3*((sqrt(5)-1) /(sqrt(5)+1)^2))-1)
A = pi*(pi^(1/3) -1)^2

% Exercise 2:
% (h,r) = (5,11)
V = (pi*5^2)*11 
% (h,r) = (17,7)
V = (pi*7^2)* 17
% (h,r) = (3,9)
V = (pi*9^2)*3 

% Exercise 3:

t = linspace(0,5*pi);

y1 = cos(t);
y2 = sin(t);
%p = plot(t,y1,t, y2);
%p(1).Marker = '>';
%p(2).Marker = '*';
plot(t,y1,'k'); 
hold on;
plot(t,y2,'r--.');
axis([0 5*pi -1.0 1.0])
legend('cos(t)','sin(t)','Location','NorthEast')
title('Figure of Alder Creek point cloud with rainbow colormap of Elevation')
clear