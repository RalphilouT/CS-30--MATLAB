% Example Command Line Interface
while true
    close all
    % Todo: input grid spacing x_grid, y_grid, dt, and equation to_draw
    hold on
    % Part I dots can be called here
    dots(x_grid,y_grid)
    
    % Plot the function using hedge 
    hedge(x_grid,y_grid,dt,to_draw);

	% Todo 
    % Ask user if they want to save the figure.
    % Save plot if answer y
    
    % Todo
	% Ask user if they want to plot another figure
	% 0 to exit, 1 to continue
end%while

function hedge(x,y,dt, to_draw)
	m = size(x,2); n = size(y,2); index=1;
	% Todo
	% For each x to m and each y to n in the dots plot
		% compute a new_y with the differential function selected to_draw
		% compute a new_x using the point-slope equation of a line
		% store the newy and newx in arrays
		% store x,y in a new arrays xx, yy
	
	% Todo
	% call your draw_lines function
	draw_lines(xx,newx,yy,newy,m,n)
end%function

% Todo:
% draw_lines function body
% plot each line and add end-marker dot
function draw_lines(xx,new_x,yy,new_y,m,n)	
	% Todo
	% Use a nested loop to
	% draw a small line between each point plot(xx,new_x,yy,new_Y,'b-')
	% plot a point at each end scatter(new_x,new_y,'.')
end

