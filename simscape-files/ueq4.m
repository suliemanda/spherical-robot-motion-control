function F = ueq4(u)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

ms=0.463;
mp=0.930;
msl=0.549;
Isx=6158.583*10^(-6);
Isy=5109.616*10^(-6);
Isz=6157.778*10^(-6);
Ipx=3060.629*10^(-6);
Ipy=1330.453 *10^(-6);
Ipz=4085.985*10^(-6);
Islx=257.271*10^(-6);
Isly=855.018*10^(-6) ;
Islz=1007.478*10^(-6);
b1=0.05;
b2=0.05;
lp=22.652*10^(-3);
lsl=(49.500 +8.945)*10^(-3);
r=0.14;
g=9.8;
M11=Isy + (mp + ms + msl)*(r)^2 *(cos(u(4)))^2 + cos(u(4))* (-2* (lp *mp + lsl *msl)* r *cos(u(2)) + (Ipz + Islz) *(cos(u(2)))^2 *cos(u(4)) + (Ipx + Islx)*cos(u(4)) *(sin(u(2)))^2)* (sin(u(4)))^2 + (Ipy + Isly + (lp^2* mp + lsl^2* msl)* (cos(u(2)))^2)* (sin(u(4)))^4 + mp *(sin(u(2)))^2 *(sin(u(4)))^2 *(lp)^2 +  msl *sin(u(4))* ((sin(u(2)))^2* sin(u(4)) *(lsl)^2 + cos(u(4)) *u(6) *(-2* r *cos(u(4)) + 2 *lsl *cos(u(2))* (sin(u(4)))^2 + cos(u(4))* sin(u(4))* u(6)));
M12=-(lp* mp + lsl *msl)* r* cos(u(2)) *cos(u(4)) + (Ipy + Isly + (lp^2 *mp + lsl^2 *msl)* (cos(u(2)))^2)* (sin(u(4)))^2 - sin(u(4))* (-(sin(u(2)))^2* sin(u(4)) *(mp*(lp)^2 + msl*(lsl)^2) - lsl *msl *cos(u(2))* cos(u(4))* u(6));
M13=sin(u(2)) *sin(u(4))* ((lp *mp + lsl *msl)* r - cos(u(2)) *cos(u(4)) *(Ipx - Ipz + Islx - Islz + lp^2* mp + msl* (lsl)^2) + lsl*msl*sin(u(4))*u(6));
M14=-msl*cos(u(4))*sin(u(2))*sin(u(4))*lsl;
M22=Ipy + Isly + lp^2* mp + lsl^2 *msl;
M23=sin(u(2))*(mp*r*lp*sin(u(4)) + msl*lsl*(r *sin(u(4)) + u(6)));
M24=0;
M33=Isx + r^2*(mp + ms + msl)+ (Ipx + Islx)*(cos(u(2)))^2+ (Ipz + Islz)*(sin(u(2)))^2+ cos(u(2)) *(cos(u(2)) *(mp*lp^2 + msl*lsl^2 ) - 2*r*cos(u(4)) *(mp*lp + msl*lsl))+ 2*msl*r*u(6)*sin(u(4)) + msl*u(6)^2;
M34=msl*(lsl *cos(u(2)) - r *cos(u(4)));
M44=msl;
C11=0.25*((cos(2*u(2))*(-Ipx + Ipz - Islx + Islz)+Ipx - 2*Ipy + Ipz + Islx - 2*Isly + Islz) *sin(4*u(4))+4*sin(2*u(4))* (Ipy + Isly + r^2*(-(mp + ms + msl)))+2*mp*r*lp* cos(u(2))*(sin(u(4)) - 3 *sin(3*u(4)))-8*mp*lp^2* sin(u(4)) *cos(u(4)) *((cos(u(2)))^2* cos(2*u(4)) - 1)+ 2*msl* (2*lsl *cos(u(2))* sin(u(4)) *(3*r* cos(2*u(4)) + r - 2*u(6) *sin(3*u(4)))+ lsl^2 *(2 *sin(2*u(4)) - (cos(u(2)))^2 * sin(4*u(4)))+u(6)* (u(6)* sin(4*u(4)) - r*(cos(u(4)) + 3 *cos(3*u(4)))))) *(u(5));
C12= sin(u(2))* cos(u(4))* (r *(mp*lp + msl*lsl) - msl*lsl*u(6) *sin(u(4)))*u(3)+2*sin(u(2))*(sin(u(4)))^2 *cos(u(4)) *(cos(u(2)) *cos(u(4))*(Ipx - Ipz + Islx - Islz + mp*lp^2 + msl*lsl^2 )+r*(mp*lp + msl*lsl) -msl*lsl*u(6) *sin(u(4)))* (u(1))+0.5*(- cos(2*u(2))* sin(2*u(4))* (Ipx - Ipz + Islx - Islz + mp*lp^2 + msl*lsl^2 )+2 *sin(2*u(4))* (Ipy + Isly + mp*lp^2 + msl*lsl^2 )+ cos(u(2)) *(4*r *sin(u(4)) *(mp*lp + msl*lsl) + 2*msl*lsl*u(6)*(cos(u(4)))^2))*(u(5));
C13=sin(u(2))* (- cos(u(2))*cos(2*u(4)) *(Ipx - Ipz + Islx - Islz + mp*lp^2 + msl*lsl^2 )+r* cos(u(4))* (mp*lp + msl*lsl) + msl*lsl*u(6) *sin(2*u(4)))*(u(5));
C14=0.5*msl*lsl *sin(u(2))*(1 - 3*cos(2*u(4)))*(u(5)) +2*msl* sin(u(4)) *cos(u(4))* (lsl *cos(u(2))*(sin(u(4)))^2 + cos(u(4)) *(u(6)* sin(u(4)) - r)) *(u(1));
C21=(sin(u(2)) *(sin(u(4)))^2 *cos(u(4))* (msl*lsl*(u(6) *sin(u(4)) - r) - mp*r*lp)-(1/8)*sin(2*u(2))*(sin(2*u(4)))^2*(Ipx - Ipz + Islx - Islz + mp*lp^2 + msl*lsl^2 ))*(u(1));
C22=0;
C23=sin(u(2))* cos(u(2))* (Ipx - Ipz + Islx - Islz + mp*lp^2 + msl*lsl^2 )*(u(5))+0.5*(sin(2*u(4))*(cos(2*u(2))*(Ipx - Ipz + Islx - Islz) + 2*(Ipy + Isly))+ (cos(2*u(2)) + 2) *sin(2*u(4))* (mp*lp^2 + msl*lsl^2 )+msl*lsl*u(6)*cos(u(2))*(3*cos(2*u(4)) - 1))*(u(1));
C24= msl*lsl *cos(u(2))* sin(2*u(4))*(u(1))+ 2*msl*lsl*sin(u(2))*(u(5));
C31=(1/4)*(-0.5* sin(4*u(4))* (Ipx - 2*Ipy + Ipz + Islx - 2*Isly+ Islz + 2*msl*u(6)^2)+0.5*cos(2*u(2))* sin(4*u(4))*(Ipx - Ipz + Islx - Islz)+ 2* sin(2*u(4))* (-Ipy - Isly + r^2*(mp + ms + msl))+ mp*r*lp *cos(u(2))*(3* sin(3*u(4)) - sin(u(4)))+ mp*lp^2 *((cos(u(2)))^2 *sin(4*u(4)) - 2 *sin(2*u(4)))+ 2*msl*lsl* cos(u(2))* sin(u(4))* (3*r *cos(2*u(4)) + r - 2*u(6) *sin(3*u(4)))+ msl*lsl ^2* ((cos(u(2)))^2 *sin(4*u(4)) - 2* sin(2*u(4)))+msl*r*u(6) *cos(u(4)) + 3*msl*r*u(6)* cos(3*u(4)))*(u(1));
C32= cos(u(2))*(mp*r*lp *sin(u(4)) + msl*lsl*(r* sin(u(4)) + u(6)))*(u(3))+0.5*(- sin(2*u(4))*((cos(2*u(2))*(Ipx - Ipz + Islx - Islz) + 2*(Ipy + Isly)))- (cos(2*u(2)) + 2)* sin(2*u(4)) *(mp*lp^2 + msl*lsl^2 )+msl*lsl*u(6)*cos(u(2))*(1 - 3*cos(2*u(4))))*(u(1));
C33= (r *cos(u(2))* sin(u(4)) *(mp*lp + msl*lsl) + msl*r*u(6) *cos(u(4)))*(u(5))+ (r* sin(u(2))* cos(u(4)) *(mp*lp + msl*lsl)- sin(2*u(2))* (Ipx- Ipz + Islx - Islz + mp*lp^2 + msl*lsl^2 ))* (u(3));
C34=(msl*lsl *sin(u(2))*(cos(u(4)))^2)*(u(1))+2*msl *(r* sin(u(4)) + u(6))*(u(5)) ;
C41=- msl* sin(u(4))* cos(u(4))* (lsl *cos(u(2)) *(sin(u(4)))^2 + cos(u(4)) *(u(6) *sin(u(4)) - r))*(u(1));
C42=- msl*lsl* cos(u(2))* sin( 2*u(4))*(u(1))-2*msl*lsl *sin(u(2))*(u(5));
C43=-msl*u(6)*u(5)- (msl*lsl *sin(u(2)) *(cos(u(4)))^2)*u(1);
C44=0;
G1=0;
G2= (mp*lp + msl*lsl)*g*sin(u(2))*cos(u(4));
G3=g *(cos (u(2))* sin(u(4))* (mp*lp + msl*lsl));
G4=msl*g *sin (u(4));
M=[M11,M12,M13;M12,M22,M23;M13,M23,M33];
C=[C11,C12,C13,C14;C21,C22,C23,C24;C31,C32,C33,C34;C41,C42,C43,C44]*[u(1);u(3);u(5);u(7)]+[b1*u(1);0;b2*u(5);0];
CC=[C(1);C(2);C(3)];
G=[G1;G2;G3];

c0=1;
c1=1.5;
c2=1;
c3=1.5;
c4=1.5;
y2=CC+G-M*[c1*u(1);c3*u(3);3*u(5)];
F=[y2(1),y2(3),y2(2)];

end