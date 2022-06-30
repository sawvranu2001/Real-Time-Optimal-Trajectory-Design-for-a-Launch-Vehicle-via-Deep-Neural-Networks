function GA = Geographic_ARVS(AzA,fpA)
%% Geographic to Atmospheric Relative Velocity System (ARVS)
% AzA - atmospheric relative flight Azimuth 
% fpA - atmospheric relative flight path angles

GA=[cos(fpA)*cos(AzA),cos(fpA)*sin(AzA),-sin(fpA);
    -sin(AzA),cos(AzA),0;
    sin(fpA)*cos(AzA),sin(fpA)*sin(AzA),cos(fpA)];

end

