function OE = conic(EM,rI,VI)
E_tot=norm(VI)^2/2-EM.mu/norm(rI); % Total Energy per unit mass
h=cross(rI,VI); % angular momentum per unit mass
ev=(norm(VI)^2/EM.mu-1/norm(rI))*rI-1/EM.mu*dot(VI,rI)*VI; 

uxI=[1;0;0]; uzI=[0;0;1];
uh=h/norm(h); urI=rI/norm(rI);
uN=cross(uzI,uh)/norm(cross(uzI,uh));
ue=ev/norm(ev);

a=-EM.mu/(2*E_tot); % semi-major axis
e=norm(ev);% % eccentricity
inc=acos(dot(uh,uzI)); % inclination

c=dot(uxI,uN); s=dot(cross(uxI,uN),uzI);
RAAN=range_0_360(c,s); % right ascension of ascending node

c=dot(uN,ue); s=dot(cross(uN,ue),uh);
AoP=range_0_360(c,s); % argument of periapsis

c=dot(ue,urI); s=dot(cross(ue,urI),uh);
TA=range_0_360(c,s); % true-anomaly

rp=a*(1-e); ra=a*(1+e); % radius of perigee and apogee

u=cos(AoP)*uN+sin(AoP)*cross(uh,uN);
latc_p=atan(u(3)/sqrt(u(1)^2+u(2)^2));
k=(EM.Re/EM.Rp)^2;
Rs=EM.Re*(1+(k-1)*(sin(latc_p))^2)^(-0.5); %distance from the center of the planet to the planet surface 
hp=rp-Rs; ha=ra-Rs; % altitude of perigee and apogee


OE.a=a; OE.e=e; OE.inc=inc; OE.RAAN=RAAN; OE.AoP=AoP; OE.TA=TA;
OE.rp=rp; OE.hp=hp; OE.ra=ra; OE.ha=ha; OE.E_tot=E_tot;
end

function th=range_0_360(c,s)
if s>=0
    th=acos(c);
else
    th=2*pi-acos(c);
end
end