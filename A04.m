% Ralphilou Tatoy
% 1607532
%Mathlab Assignment #4 Functions
%Submission Date: 11/17/19
%
%Porgram Description:
%Complete Parts I & II


Part I
Example 1
done = 0;
while done == 0 
    x = input('Enter [min:spacing:max] of the x plane (e.g [-5:.5:5]):');
%     y = input('Enter [min:spacing:max] of the y plane (e.g [-5:.5:5]):');
    y = x;
    dots(x,y)
    save = input('Do you want to save the figure as png (y/n)? ', 's');
    if strcmp(save, 'y')
        saveas(gcf,'dots.png');
    elseif strcmp(save, 'n')
        disp(save)
    end
    done = input('Enter 0 to continue or enter 1 to stop: ');
end
clear;

Part II
done = 0;
while done == 0 
    x = input('Enter [min:spacing:max] of the x plane (e.g [-5:.5:5]):');
%     y = input('Enter [min:spacing:max] of the y plane (e.g [-5:.5:5]):');
    y = x;
    dt = input('Enter in the time step (e.g. .15):');
    disp('Which differential equation do you want to use for the slope field [0,1,2,3]?');
    disp('0: y’ = - x / y');
    disp('1: y’ = x + y');
    disp('2: y’ = -( 2 * x * y ) / ( 1 + x^2 )');
    disp('3: y’ = y - x;');
    draw = input('Enter your choice: ', 's');
    if strcmp(draw, '0')
        D = -x ./ y;
        newx = (dt * D) + x;
        newy = (dt * D) + y;
        dots0(x ,y, newx, newy);
    elseif strcmp(draw, '1')
        D = x + y;
        newx = (dt * D) + x;
        newy = (dt * D) + y;
        dots1(x,y, newx, newy);
    elseif strcmp(draw, '2')
        D = - ( 2.* x .* y) ./ (1 + x.^2);
        newx = (dt * D) + x;
        newy = (dt * D) + y;
        dots2(x,y, newx, newy);
    elseif strcmp(draw, '3')
        D = y - x;
        newx = (dt * D) + x;
        newy = (dt * D) + y;
        dots3(x,y, newx, newy);
    end
%     dots(x,y)
%     hedge(x, y, dt, to_draw);
    save = input('Do you want to save the figure as png (y/n)? ', 's');
    if strcmp(save, 'y')
        saveas(gcf,'dots.png');
    elseif strcmp(save, 'n')
        disp(save)
    end
    done = input('Enter 0 to continue or enter 1 to stop: ');
    clear;
end
clear;
function dots(x,y)
    [X, Y] = meshgrid(x,y);
    figure(1)
    plot(X, Y, '.')
end
function drawLine0(newx, newy)
    [X , Y] = meshgrid(newx, newy);
%     [NEWX, NEWY] = meshgrid(newx, newy);
%     plot([X , Y], [NEWX, NEWY]);
    S = -X ./ Y;
    L = sqrt(1 + S.^2);
    quiver(X, Y, 1./L, S./L), 
end
function drawLine1(newx, newy)
    [X , Y] = meshgrid(newx, newy);
    S = X + Y;
    L = sqrt(1 + S.^2);
    quiver(X, Y, 1./L, S./L), 
end
function drawLine2(newx, newy)
    [X,Y] = meshgrid(newx, newy);
    S = - ( 2.* X .* Y) ./ (1 + X.^2);
    L = sqrt(1 + S.^2);
    quiver(X, Y, 1./L, S./L), 
end
function drawLine3(newx, newy)
    [X,Y] = meshgrid(newx, newy);
    S = Y - X;
    L = sqrt(1 + S.^2);
    quiver(X, Y, 1./L, S./L), 
end
function newdots(newx, newy)
    [X, Y] = meshgrid(newx, newy);
    figure(1)
    plot(X, Y, '.')
%     axis square
end
function dots0(x,y,newx, newy)
    dots(x,y);
    hold on;
    newdots(newx, newy);
    hold on;
    drawLine0(newx, newy);
    hold on;
end
function dots1(x,y,newx, newy)
    dots(x,y);
    hold on;
    newdots(newx, newy);
    hold on;
    drawLine1(newx, newy);
    hold off;  
end
function dots2(x,y,newx, newy)
    dots(x,y);
    hold on;
    newdots(newx, newy);
    hold on;
    drawLine2(newx, newy);
    hold off;
end
function dots3(x,y,newx, newy)
    dots(x,y);
    hold on;
    newdots(newx, newy);
    hold on;
    drawLine3(newx, newy);
    hold off;
end

% % function dots(x,y)
% %     [X, Y] = meshgrid(x,y);
% %     figure(1)
% %     plot(X, Y, '.')
% %     axis square
% % end
% % Example Command Line Interface
% function hedge(x,y,dt, to_draw)
% 	m = size(x,2); n = size(y,2); index=1;
% 	% Todo
% 	% For each x to m and each y to n in the dots plot
% 		% compute a new_y with the differential function selected to_draw
% 		% compute a new_x using the point-slope equation of a line
% 		% store the newy and newx in arrays
% 		% store x,y in a new arrays xx, yy
% 	xx = x;
%     yy = y;
% 	% Todo
% 	% call your draw_lines function
% 	draw_lines(xx,newx,yy,newy,m,n)
% end%function
% 
% % Todo:
% % draw_lines function body
% % plot each line and add end-marker dot
% function draw_lines(xx,new_x,yy,new_y,m,n)	
% 	% Todo
% 	% Use a nested loop to
% 	% draw a small line between each point plot(xx,new_x,yy,new_Y,'b-')
% 	% plot a point at each end scatter(new_x,new_y,'.')
% end
% 
% % Part I
% % dots function plots grid of dots

% % 
% % use values = zeros(m*n)
% % for i = 0:m
% %     for j = 0:n
% %         fprintf("%d (%d, %d)",
% %     end
% % end
