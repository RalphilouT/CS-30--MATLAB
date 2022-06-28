% Ralphilou Tatoy
% 1607532
% Assignment #2
% September 24, 2019
%
% Program Description:
% This program visualizes lidar data and applies a
% colormap generated from a lidar point’s height
%
%Exercise 2
%
load alder_creek_sparse
column3 = alder_sparse(:, 3)
height = column3
range = max(height)- min(height)
a = (abs(min(height)) + height) 
b = range
height01 = a ./ b

%compute an [r,g,b] triplet for each height in the alder_sparse array
[r,g,b] = rainbow_color_map(height01)
%store r,g,b vectors in a colormap vector
rainbow_colormap = [r,g,b]


%Exercise 3
data = importdata('alder_creek_sparse.mat');
x = data(:,1);
y = data(:,2);
z = data(:,3);
c = rainbow_colormap;
s = 3;
scatter3(x,y,z,s,c);
clear
clc