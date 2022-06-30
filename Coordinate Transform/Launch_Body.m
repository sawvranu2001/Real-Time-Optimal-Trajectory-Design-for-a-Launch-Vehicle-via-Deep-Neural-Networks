function LB = Launch_Body(rollI,yawI,pitchI)
%% Launch to Body
% Inertial Euler angles
% rollI - Inertial roll angle (phi)
% yawI - Inertial yaw angle (psi)
% pitchI - Inertial pitch angle (theta)

LB=[cos(yawI)*cos(pitchI), sin(yawI), -cos(yawI)*sin(pitchI);
    -cos(rollI)*sin(yawI)*cos(pitchI)+sin(rollI)*sin(pitchI), cos(rollI)*cos(yawI), cos(rollI)*sin(yawI)*sin(pitchI)+sin(rollI)*cos(pitchI);
    sin(rollI)*sin(yawI)*cos(pitchI)+cos(rollI)*sin(pitchI), -sin(rollI)*cos(yawI), -sin(rollI)*sin(yawI)*sin(pitchI)+cos(rollI)*cos(pitchI)];

end

