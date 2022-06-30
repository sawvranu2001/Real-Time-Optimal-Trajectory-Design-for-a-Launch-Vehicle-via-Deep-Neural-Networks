function IG = Inertial_Geographic(latc,longI)
%% Inertial to Geographic
% Geographic Frame Angles
% latc - Geocentric latitude (phi)
% longI - Inertial longitude (theta)

IG=[-sin(latc)*cos(longI), -sin(latc)*sin(longI), cos(latc);
    -sin(longI), cos(longI), 0;
    -cos(latc)*cos(longI), -cos(latc)*sin(longI), -sin(latc)];

end

