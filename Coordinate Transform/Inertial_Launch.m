function IL = Inertial_Launch(latL,longL,AzL)
%% Inertial to Launch
% Inertial Launch Angles
% latL - Geodetic latitude (phi)
% longL - Inertial longitude (theta)
% AzL - Azimuth 

IL=[-sin(AzL)*sin(longL)-cos(AzL)*sin(latL)*cos(longL), sin(AzL)*cos(longL)-cos(AzL)*sin(latL)*sin(longL), cos(AzL)*cos(latL);
    -cos(AzL)*sin(longL)+sin(AzL)*sin(latL)*cos(longL), cos(AzL)*cos(longL)+sin(AzL)*sin(latL)*sin(longL), -sin(AzL)*cos(latL);
    -cos(latL)*cos(longL), -cos(latL)*sin(longL), -sin(latL)];

end

