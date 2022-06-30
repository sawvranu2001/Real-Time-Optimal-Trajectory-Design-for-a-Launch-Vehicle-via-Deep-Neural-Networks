function [VEL,fp,Az] = position_and_velocity(EM,rI,VI,IG,VwG)
VEL.VR=VI-cross(EM.wp,rI); VEL.VwG=VwG; VEL.VwI=IG\VwG;  VEL.VA=VEL.VR-VEL.VwI; 
VEL.VIG=IG*VI; VEL.VRG=IG*VEL.VR; VEL.VAG=IG*VEL.VA;

fp.fpI=flight_path(rI,VI); fp.fpR=flight_path(rI,VEL.VR); fp.fpA=flight_path(rI,VEL.VA);

Az.AzI=azimuth(VEL.VIG); Az.AzR=azimuth(VEL.VRG); Az.AzA=azimuth(VEL.VAG);
end

function Az=azimuth(V)
Az=atan2(V(2),V(1));
end

function fp=flight_path(rI,V)
if norm(V)==0
    fp=pi/2;
else
    urI=rI/norm(rI); uV=V/norm(V);
    fp=asin(urI'*uV);
end
end