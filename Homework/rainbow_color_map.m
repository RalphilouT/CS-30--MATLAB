%rainbow color map function
%source: Data Visualization Principles and Practices
%        Telea,2008
function [R,G,B] = rainbow_color_map(f)
    dx = .08;
    %skip clamp, data normalized
    g = (6-2*dx)*f+dx;
    R = max(0,(3-abs(g-4)-abs(g-5))/2);
    G = max(0,(4-abs(g-2)-abs(g-4))/2);
    B = max(0,(3-abs(g-1)-abs(g-2))/2);
end