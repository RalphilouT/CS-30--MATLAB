% Ralphilou Tatoy
% 1607532
% December 12, 2019
% File I/O and User De?ned Types
classdef cMaterial
    properties
        Material
        Density
        Tensile
        Conductivity
    end
    methods
        function obj = cMaterial(m,d,t,c)
            if nargin > 0
                obj.Material = m;
                obj.Density = d;
                obj.Tensile = t;
                obj.Conductivity = c;
            end
        end
    end
end
