% Ralphilou Tatoy
% 1607532
% December 12, 2019
% File I/O and User De?ned Types

fileID = fopen('material_properties.csv');
count = 0;
matt_array = cMaterial.empty();
class(matt_array);

linenum = 2;
while(~feof(fileID))
    tline = fgetl(fileID);
    disp(tline);
    count = count + 1;
    if count == 1
        C(1,:) = split(tline, ',');
    elseif count == 2
        C(2,:) = split(tline, ',');
    elseif count == 3
        C(3,:) = split(tline, ',');
    elseif count == 4
        C(4,:) = split(tline, ',');
    elseif count == 5
        C(5,:) = split(tline, ',');
    end
end

count1 = 0;
fprintf('\t\t%8s\t%8s\t%8s\t%8s\n','Material','Density(g/cc)', 'Tensile Strength(MPa)','Conductivity(W/mk)\n');
for i = 1:5
   C{i,1} = string(C{i,1});
   C{i,2} = str2double(C{i,2});
   C{i,3} = str2double(C{i,3});
   C{i,4} = str2double(C{i,4});
   matt_array(i).Material = C{i,1};
   matt_array(i).Density = C{i,2};
   matt_array(i).Tensile = C{i,3};
   matt_array(i).Conductivity = C{i,4};
   fprintf('%15s  %8.2f\t\t\t%8.2f\t\t\t\t\t%8.2f\n', matt_array(i).Material,matt_array(i).Density,matt_array(i).Tensile,matt_array(i).Conductivity); 
end


fclose(fileID);