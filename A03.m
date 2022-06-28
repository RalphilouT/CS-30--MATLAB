%Ralphilou Tatoy
%1607532
%10\12\19
%
%Program Description:
%Complete Secions I, II, III
%
%Part I
A = [ 1 -2 1; 0 2 -8; -4 5 9];
B = [0;8;-9];
x1 = A\B;
%x1 = linsolve(A,B); 
%formatSpec = 'x = %f , y = %f, z= %f';
fprintf('x = %.1f , y = %.1f, z= %.1f \n', x1);
%
%
%Part II
%ax1 = subplot(2,1,1,polaraxes);

theta = (-pi/2:pi/100:pi/2);

G = ((sin(4.*theta)./ (4.*theta)));

polarplot(theta, abs(G))
title('Antenna Gain verus \theta')

%polarplot(ax1,theta, abs(G))

%Part III
r = input('Enter in the sensor data [reading_1, reading_2...reading_n]: \n');

M = mean(r(r>=0) , 'all');
if M ~= M
        fprintf('Average rainfall for the period is: -1\n' )
    %if r == '[]'
       %fprintf('Average rainfall for the period is -1');
elseif M>0
    fprintf('Average rainfall for the period is: %.1f\n', M)
else
    fprintf('Average rainfall for the period is: -1\n') 
end
loop = 0;
while loop == 0 
name = input('Do you want more? type Y/N: ','s');
if  name == 'Y'
    r = input('Enter in the sensor data [reading_1, reading_2...reading_n]: \n');
    M = mean(r(r>=0), 'all');
    loop = 0;
    if M ~= M
        fprintf('Average rainfall for the period is: -1\n' )
    %if r == '[]'
       %fprintf('Average rainfall for the period is -1');
    elseif M>0
    fprintf('Average rainfall for the period is: %.1f\n', M)
    else
        fprintf('Average rainfall for the period is: -1\n') 
    end
elseif name == 'N'
    loop = 1;
end 
end
fprintf('Goodbye')






