function  IB = Inertial_Body(inp,method)
%% Inertial to Body
if isequal(method,'LB_IL')
    IB=Launch_Body(inp.rollI,inp.yawI,inp.pitchI)*Inertial_Launch(inp.latL,inp.longL,inp.AzL);
elseif isequal(method,'AB_GA_IG')
    IB=ARVS_Body(inp.b,inp.ss,inp.aoa)*Geographic_ARVS(inp.AzA,inp.fpA)*Inertial_Geographic(inp.latc,inp.longI);
else
    disp("Error");
end

