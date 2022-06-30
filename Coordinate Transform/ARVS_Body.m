function AB = ARVS_Body(b,ss,aoa)
%% Atmospheric Relative Velocity System (ARVS) to Body
% Aerodynamic angles
% b - bank angle (sigma)
% ss - sideslip angle (beta)
% aoa - angle of attack (alpha)

AB= [cos(aoa)*cos(ss), -cos(aoa)*sin(ss)*cos(b)+sin(aoa)*sin(b), -cos(aoa)*sin(ss)*sin(b)-sin(aoa)*cos(b);
    sin(ss), cos(ss)*cos(b), cos(ss)*sin(b);
    sin(aoa)*cos(ss), -sin(aoa)*sin(ss)*cos(b)-cos(aoa)*sin(b), -sin(aoa)*sin(ss)*sin(b)+cos(aoa)*cos(b)];

end

