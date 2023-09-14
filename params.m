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
syms phi theta alpha Ysl dottheta dotphi dotalpha M11 M12 M13 M14 M22 M23 M24 M33 M34 M44 C11 C12 C13 C13 C21 C22 C23 C24 C31 C32 C33 C34 C41 C42 C43 C44 G1 G2 G3 G4 dG
M11(alpha,phi,Ysl)=Isy + (mp + ms + msl)*(r)^2 *(cos(phi))^2 + cos(phi)* (-2* (lp *mp + lsl *msl)* r *cos(alpha) + (Ipz + Islz) *(cos(alpha))^2 *cos(phi) + (Ipx + Islx)*cos(phi) *(sin(alpha))^2)* (sin(phi))^2 + (Ipy + Isly + (lp^2* mp + lsl^2* msl)* (cos(alpha))^2)* (sin(phi))^4 + mp *(sin(alpha))^2 *(sin(phi))^2 *(lp)^2 +  msl *sin(phi)* ((sin(alpha))^2* sin(phi) *(lsl)^2 + cos(phi) *Ysl *(-2* r *cos(phi) + 2 *lsl *cos(alpha)* (sin(phi))^2 + cos(phi)* sin(phi)* Ysl));
M12(alpha,phi,Ysl)=-(lp* mp + lsl *msl)* r* cos(alpha) *cos(phi) + (Ipy + Isly + (lp^2 *mp + lsl^2 *msl)* (cos(alpha))^2)* (sin(phi))^2 - sin(phi)* (-(sin(alpha))^2* sin(phi) *(mp*(lp)^2 + msl*(lsl)^2) - lsl *msl *cos(alpha)* cos(phi)* Ysl);
M13(alpha,phi,Ysl)=sin(alpha) *sin(phi)* ((lp *mp + lsl *msl)* r - cos(alpha) *cos(phi) *(Ipx - Ipz + Islx - Islz + lp^2* mp + msl* (lsl)^2) + lsl*msl*sin(phi)*Ysl);
M14(alpha,phi,Ysl)=-msl*cos(phi)*sin(alpha)*sin(phi)*lsl;
M22(alpha,phi,Ysl)=Ipy + Isly + lp^2* mp + lsl^2 *msl;
M23(alpha,phi,Ysl)=sin(alpha)*(mp*r*lp*sin(phi) + msl*lsl*(r *sin(phi) + Ysl));
M24(alpha,phi,Ysl)=0;
M33(alpha,phi,Ysl)=Isx + r^2*(mp + ms + msl)+ (Ipx + Islx)*(cos(alpha))^2+ (Ipz + Islz)*(sin(alpha))^2+ cos(alpha) *(cos(alpha) *(mp*lp^2 + msl*lsl^2 ) - 2*r*cos(phi) *(mp*lp + msl*lsl))+ 2*msl*r*Ysl*sin(phi) + msl*Ysl;
M34(alpha,phi,Ysl)=msl*(lsl *cos(alpha) - r *cos(phi));
M44(alpha,phi,Ysl)=msl;
C11(alpha,phi,Ysl,dottheta,dotalpha,dotphi)=0.25*((cos(2*alpha)*(-Ipx + Ipz - Islx + Islz)+Ipx - 2*Ipy + Ipz + Islx - 2*Isly + Islz) *sin(4*phi)+4*sin(2*phi)* (Ipy + Isly + r^2*(-(mp + ms + msl)))+2*mp*r*lp* cos(alpha)*(sin(phi) - 3 *sin(3*phi))-8*mp*lp^2* sin(phi) *cos(phi) *((cos(alpha))^2* cos(2*phi) - 1)+ 2*msl* (2*lsl *cos(alpha)* sin(phi) *(3*r* cos(2*phi) + r - 2*Ysl *sin(3*phi))+ lsl^2 *(2 *sin(2*phi) - (cos(alpha))^2 * sin(4*phi))+Ysl* (Ysl* sin(4*phi) - r*(cos(phi) + 3 *cos(3*phi))))) *(dotphi);
C12(alpha,phi,Ysl,dottheta,dotalpha,dotphi)= sin(alpha)* cos(phi)* (r *(mp*lp + msl*lsl) - msl*lsl*Ysl *sin(phi))*dotalpha+2*sin(alpha)*(sin(phi))^2 *cos(phi) *(cos(alpha) *cos(phi)*(Ipx - Ipz + Islx - Islz + mp*lp^2 + msl*lsl^2 )+r*(mp*lp + msl*lsl) -msl*lsl*Ysl *sin(phi))* (dottheta)+0.5*(- cos(2*alpha)* sin(2*phi)* (Ipx - Ipz + Islx - Islz + mp*lp^2 + msl*lsl^2 )+2 *sin(2*phi)* (Ipy + Isly + mp*lp^2 + msl*lsl^2 )+ cos(alpha) *(4*r *sin(phi) *(mp*lp + msl*lsl) + 2*msl*lsl*Ysl*(cos(phi))^2))*(dotphi);
C13(alpha,phi,Ysl,dottheta,dotalpha,dotphi)=sin(alpha)* (- cos(alpha)*cos(2*phi) *(Ipx - Ipz + Islx - Islz + mp*lp^2 + msl*lsl^2 )+r* cos(phi)* (mp*lp + msl*lsl) + msl*lsl*Ysl *sin(2*phi))*(dotphi);
C14(alpha,phi,Ysl,dottheta,dotalpha,dotphi)=0.5*msl*lsl *sin(alpha)*(1 - 3*cos(2*phi))*(dotphi) +2*msl* sin(phi) *cos(phi)* (lsl *cos(alpha)*(sin(phi))^2 + cos(phi) *(Ysl* sin(phi) - r)) *(dottheta);
C21(alpha,phi,Ysl,dottheta,dotalpha,dotphi)=(sin(alpha) *(sin(phi))^2 *cos(phi)* (msl*lsl*(Ysl *sin(phi) - r) - mp*r*lp)-(1/8)*sin(2*alpha)*(sin(2*phi))^2*(Ipx - Ipz + Islx - Islz + mp*lp^2 + msl*lsl^2 ))*(dottheta);
C22(alpha,phi,Ysl,dottheta,dotalpha,dotphi)=0;
C23(alpha,phi,Ysl,dottheta,dotalpha,dotphi)=sin(alpha)* cos(alpha)* (Ipx - Ipz + Islx - Islz + mp*lp^2 + msl*lsl^2 )*(dotphi)+0.5*(sin(2*phi)*(cos(2*alpha)*(Ipx - Ipz + Islx - Islz) + 2*(Ipy + Isly))+ (cos(2*alpha) + 2) *sin(2*phi)* (mp*lp^2 + msl*lsl^2 )+msl*lsl*Ysl*cos(alpha)*(3*cos(2*phi) - 1))*(dottheta);
C24(alpha,phi,Ysl,dottheta,dotalpha,dotphi)= msl*lsl *cos(alpha)* sin(2*phi)*(dottheta)+ 2*msl*lsl*sin(alpha)*(dotphi);
C31(alpha,phi,Ysl,dottheta,dotalpha,dotphi)=(1/4)*(-0.5* sin(4*phi)* (Ipx - 2*Ipy + Ipz + Islx - 2*Isly+ Islz + 2*msl*Ysl^2)+0.5*cos(2*alpha)* sin(4*phi)*(Ipx - Ipz + Islx - Islz)+ 2* sin(2*phi)* (-Ipy - Isly + r^2*(mp + ms + msl))+ mp*r*lp *cos(alpha)*(3* sin(3*phi) - sin(phi))+ mp*lp^2 *((cos(alpha))^2 *sin(4*phi) - 2 *sin(2*phi))+ 2*msl*lsl* cos(alpha)* sin(phi)* (3*r *cos(2*phi) + r - 2*Ysl *sin(3*phi))+ msl*lsl ^2* ((cos(alpha))^2 *sin(4*phi) - 2* sin(2*phi))+msl*r*Ysl *cos(phi) + 3*msl*r*Ysl* cos(3*phi))*(dottheta);
C32(alpha,phi,Ysl,dottheta,dotalpha,dotphi)= cos(alpha)*(mp*r*lp *sin(phi) + msl*lsl*(r* sin(phi) + Ysl))*(dotalpha)+0.5*(- sin(2*phi)*((cos(2*alpha)*(Ipx - Ipz + Islx - Islz) + 2*(Ipy + Isly)))- (cos(2*alpha) + 2)* sin(2*phi) *(mp*lp^2 + msl*lsl^2 )+msl*lsl*Ysl*cos(alpha)*(1 - 3*cos(2*phi)))*(dottheta);
C33(alpha,phi,Ysl,dottheta,dotalpha,dotphi)= (r *cos(alpha)* sin(phi) *(mp*lp + msl*lsl) + msl*r*Ysl *cos(phi))*(dotphi)+ (r* sin(alpha)* cos(phi) *(mp*lp + msl*lsl)- sin(2*alpha)* (Ipx- Ipz + Islx - Islz + mp*lp^2 + msl*lsl^2 ))* (dotalpha);
C34(alpha,phi,Ysl,dottheta,dotalpha,dotphi)=(msl*lsl *sin(alpha)*(cos(phi))^2)*(dottheta)+2*msl *(r* sin(phi) + Ysl)*(dotphi) ;
C41(alpha,phi,Ysl,dottheta,dotalpha,dotphi)=- msl* sin(phi)* cos(phi)* (lsl *cos(alpha) *(sin(phi))^2 + cos(phi) *(Ysl *sin(phi) - r))*(dottheta);
C42(alpha,phi,Ysl,dottheta,dotalpha,dotphi)=- msl*lsl* cos(alpha)* sin( 2*phi)*(dottheta)-2*msl*lsl *sin(alpha)*(dotphi);
C43(alpha,phi,Ysl,dottheta,dotalpha,dotphi)=-msl*Ysl*dotphi- (msl*lsl *sin(alpha) *(cos(phi))^2)*dottheta;
C44(alpha,phi,Ysl,dottheta,dotalpha,dotphi)=0;
G1(alpha,phi,Ysl)=0;
G2(alpha,phi,Ysl)= (mp*lp + msl*lsl)*g*sin(alpha)*cos(phi);
G3(alpha,phi,Ysl)=g *(cos (alpha)* sin(phi)* (mp*lp + msl*lsl) + msl*Ysl *cos(phi));
G4(alpha,phi,Ysl)=msl*g *sin (phi);
dG(alpha,phi,Ysl)=[diff(G1,theta),diff(G1,alpha),diff(G1,phi),diff(G1,Ysl);diff(G2,theta),diff(G2,alpha),diff(G2,phi),diff(G2,Ysl);diff(G3,theta),diff(G3,alpha),diff(G3,phi),diff(G3,Ysl);diff(G4,theta),diff(G4,alpha),diff(G4,phi),diff(G4,Ysl)];
B=[-1,0;1,0;0,0;0,1];
v1=[0.1,0,10,0,10,0,0,0];
v2=[1/0.01,1/0.1];
Q=diag(v1);
R=diag(v2);
%M(alpha,phi,Ysl)=[M11,M12,M13,M14;M12,M22,M23,M24;M13,M23,M33,M34;M14,M24,M34,M44];
%%
ru=1;
 FIS = addOutput(FIS,[-10,10],'Name','kp1theta');
 FIS = addOutput(FIS,[-10,10],'Name','kd1theta');
 FIS = addOutput(FIS,[-10,10],'Name','kp1alpha');
 FIS = addOutput(FIS,[-10,10],'Name','kd1alpha');
 FIS = addOutput(FIS,[-10,10],'Name','kp1phi');
 FIS = addOutput(FIS,[-10,10],'Name','kd1phi');
 FIS = addOutput(FIS,[-10,10],'Name','kp1Y');
 FIS = addOutput(FIS,[-10,10],'Name','kd1Y');
 FIS = addOutput(FIS,[-10,10],'Name','kp2theta');
 FIS = addOutput(FIS,[-10,10],'Name','kd2theta');
 FIS = addOutput(FIS,[-10,10],'Name','kp2alpha');
 FIS = addOutput(FIS,[-10,10],'Name','kd2alpha');
 FIS = addOutput(FIS,[-10,10],'Name','kp2phi');
 FIS = addOutput(FIS,[-10,10],'Name','kd2phi');
 FIS = addOutput(FIS,[-10,10],'Name','kp2Y');
 FIS = addOutput(FIS,[-10,10],'Name','kd2Y');

 %%
for i = 1: 3
    for j = 1:3
        for k = 1: 3
          for q = 1:3
              for w = 1:3
                  a=(i-2)*pi/3;
                  b=(q-2)*pi/6;
                  c=(j-2)*2*pi;
                  d=(k-2)*2*pi;
                  e=(w-2)*pi/2;
                
                   
%                  FIS = addMF(FIS,'K','constant',K,'Name',['K',num2str(i),num2str(j),num2str(k),num2str(q),num2str(w)]);

                 
              %    M(:,:)=double([M11(a,b,0),M12(a,b,0),M13(a,b,0),M14(a,b,0);M12(a,b,0),M22(a,b,0),M23(a,b,0),M24(a,b,0);M13(a,b,0),M23(a,b,0),M33(a,b,0),M34(a,b,0);M14(a,b,0),M24(a,b,0),M34(a,b,0),M44(a,b,0)]);
              
             %   CC(:,:,i,j,k,q,w)=double([C11(a,b,0,d,c,e),C12(a,b,0,d,c,e),C13(a,b,0,d,c,e),C14(a,b,0,d,c,e);C12(a,b,0,d,c,e),C22(a,b,0,d,c,e),C23(a,b,0,d,c,e),C24(a,b,0,d,c,e);C13(a,b,0,d,c,e),C23(a,b,0,d,c,e),C33(a,b,0,d,c,e),C34(a,b,0,d,c,e);C14(a,b,0,d,c,e),C24(a,b,0,d,c,e),C34(a,b,0,d,c,e),C44(a,b,0,d,c,e)]);
             
             % GG(:,:,i,j,k,q,w)=double(dG(a,b,0));
             %   A(:,:,i,j,k,q,w)=[zeros(4),eye(4);-inv(M(:,:,i,j,k,q,w))*GG(:,:,i,j,k,q,w),-inv(M(:,:,i,j,k,q,w))*CC(:,:,i,j,k,q,w)];
              %  BB(:,:,i,j,k,q,w)=[zeros(4,2);inv(M(:,:,i,j,k,q,w))*B];
             %sys = ss(A(:,:,i,j,k,q,w),BB(:,:,i,j,k,q,w),syC,0);
               [K(:,:,i,j,k,q,w),S,E] = lqr(A(:,:,i,j,k,q,w),BB(:,:,i,j,k,q,w),Q,R);
%alpha alphadot Y thetadot phi phidot
                % eval( ['M' num2str(i) '_' num2str(j) '_'  num2str(k) '_' num2str(q) '_' num2str(w) '=double([M11(a,b,0),M12(a,b,0),M13(a,b,0),M14(a,b,0);M12(a,b,0),M22(a,b,0),M23(a,b,0),M24(a,b,0);M13(a,b,0),M23(a,b,0),M33(a,b,0),M34(a,b,0);M14(a,b,0),M24(a,b,0),M34(a,b,0),M44(a,b,0)]);'])
              end
          end
        end
    end
end
%%
FIS = sugfis;
FIS = addInput(FIS,[-pi/3 pi/3],'Name','alpha');
FIS = addMF(FIS,'alpha','trimf',[-2*pi/3 -pi/3 0],'Name','Negative');
FIS = addMF(FIS,'alpha','trimf',[-pi/3 0 pi/3],'Name','Zero');
FIS = addMF(FIS,'alpha','trimf',[0 pi/3 2*pi/3],'Name','Positive');

FIS = addInput(FIS,[-2*pi 2*pi],'Name','alphadot');
FIS = addMF(FIS,'alphadot','trimf',[-4*pi -2*pi 0],'Name','Negative');
FIS = addMF(FIS,'alphadot','trimf',[-2*pi 0 2*pi],'Name','Zero');
FIS = addMF(FIS,'alphadot','trimf',[0 2*pi 4*pi],'Name','Positive');

FIS = addInput(FIS,[-2*pi 2*pi],'Name','thetadot');
FIS = addMF(FIS,'thetadot','trimf',[-4*pi -2*pi 0],'Name','Negative');
FIS = addMF(FIS,'thetadot','trimf',[-2*pi 0 2*pi],'Name','Zero');
FIS = addMF(FIS,'thetadot','trimf',[0 2*pi 4*pi],'Name','Positive');

FIS = addInput(FIS,[-pi/6 pi/6],'Name','phi');
FIS = addMF(FIS,'phi','trimf',[-pi/3 -pi/6 0],'Name','Negative');
FIS = addMF(FIS,'phi','trimf',[-pi/6 0 pi/6],'Name','Zero');
FIS = addMF(FIS,'phi','trimf',[0 pi/6 pi/3],'Name','Positive');

FIS = addInput(FIS,[-pi/2 pi/2],'Name','phidot');
FIS = addMF(FIS,'phidot','trimf',[-pi -pi/2 0],'Name','Negative');
FIS = addMF(FIS,'phidot','trimf',[-pi/2 0 pi/2],'Name','Zero');
FIS = addMF(FIS,'phidot','trimf',[0 pi/2 pi],'Name','Positive');

 FIS = addOutput(FIS,[-30,30],'Name','kp1theta');
 FIS = addOutput(FIS,[-30,30],'Name','kd1theta');
 FIS = addOutput(FIS,[-30,30],'Name','kp1alpha');
 FIS = addOutput(FIS,[-30,30],'Name','kd1alpha');
 FIS = addOutput(FIS,[-30,30],'Name','kp1phi');
 FIS = addOutput(FIS,[-30,30],'Name','kd1phi');
 FIS = addOutput(FIS,[-30,30],'Name','kp1Y');
 FIS = addOutput(FIS,[-30,30],'Name','kd1Y');
 FIS = addOutput(FIS,[-30,30],'Name','kp2theta');
 FIS = addOutput(FIS,[-30,30],'Name','kd2theta');
 FIS = addOutput(FIS,[-30,30],'Name','kp2alpha');
 FIS = addOutput(FIS,[-30,30],'Name','kd2alpha');
 FIS = addOutput(FIS,[-30,30],'Name','kp2phi');
 FIS = addOutput(FIS,[-30,30],'Name','kd2phi');
 FIS = addOutput(FIS,[-30,30],'Name','kp2Y');
 FIS = addOutput(FIS,[-30,30],'Name','kd2Y');

ru=1;
for i = 1: 3
    for j = 1:3
        for k = 1: 3
          for q = 1:3
              for w = 1:3
                  a=(i-2)*pi/3;
                  b=(q-2)*pi/6;
                  c=(j-2)*2*pi;
                  d=(k-2)*2*pi;
                  e=(w-2)*pi/2;
                  ruleList(ru,:) =[i,j,k,q,w,ru,ru,ru,ru,ru,ru,ru,ru,ru,ru,ru,ru,ru,ru,ru,ru,1,1];
                  knum(ru,:)=[i,j,k,q,w];
                 
                   FIS = addMF(FIS,'kp1theta','constant',K(1,1,i,j,k,q,w),'Name',['kp1theta',num2str(i),num2str(j),num2str(k),num2str(q),num2str(w)]);
                   FIS = addMF(FIS,'kp2theta','constant',K(2,1,i,j,k,q,w),'Name',['kp2theta',num2str(i),num2str(j),num2str(k),num2str(q),num2str(w)]);
                   FIS = addMF(FIS,'kp1alpha','constant',K(1,2,i,j,k,q,w),'Name',['kp1alpha',num2str(i),num2str(j),num2str(k),num2str(q),num2str(w)]);
                   FIS = addMF(FIS,'kp2alpha','constant',K(2,2,i,j,k,q,w),'Name',['kp2alpha',num2str(i),num2str(j),num2str(k),num2str(q),num2str(w)]);
                   FIS = addMF(FIS,'kp1phi','constant',K(1,3,i,j,k,q,w),'Name',['kp1phi',num2str(i),num2str(j),num2str(k),num2str(q),num2str(w)]);
                   FIS = addMF(FIS,'kp2phi','constant',K(2,3,i,j,k,q,w),'Name',['kp2phi',num2str(i),num2str(j),num2str(k),num2str(q),num2str(w)]);
                   FIS = addMF(FIS,'kp1Y','constant',K(1,4,i,j,k,q,w),'Name',['kp1Y',num2str(i),num2str(j),num2str(k),num2str(q),num2str(w)]);
                   FIS = addMF(FIS,'kp2Y','constant',K(2,4,i,j,k,q,w),'Name',['kp2Y',num2str(i),num2str(j),num2str(k),num2str(q),num2str(w)]);
                   FIS = addMF(FIS,'kd1theta','constant',K(1,5,i,j,k,q,w),'Name',['kd1theta',num2str(i),num2str(j),num2str(k),num2str(q),num2str(w)]);
                   FIS = addMF(FIS,'kd2theta','constant',K(2,5,i,j,k,q,w),'Name',['kd2theta',num2str(i),num2str(j),num2str(k),num2str(q),num2str(w)]);
                   FIS = addMF(FIS,'kd1alpha','constant',K(1,6,i,j,k,q,w),'Name',['kd1alpha',num2str(i),num2str(j),num2str(k),num2str(q),num2str(w)]);
                   FIS = addMF(FIS,'kd2alpha','constant',K(2,6,i,j,k,q,w),'Name',['kd2alpha',num2str(i),num2str(j),num2str(k),num2str(q),num2str(w)]);
                   FIS = addMF(FIS,'kd1phi','constant',K(1,7,i,j,k,q,w),'Name',['kd1phi',num2str(i),num2str(j),num2str(k),num2str(q),num2str(w)]);
                   FIS = addMF(FIS,'kd2phi','constant',K(2,7,i,j,k,q,w),'Name',['kd2phi',num2str(i),num2str(j),num2str(k),num2str(q),num2str(w)]);
                   FIS = addMF(FIS,'kd1Y','constant',K(1,8,i,j,k,q,w),'Name',['kd1Y',num2str(i),num2str(j),num2str(k),num2str(q),num2str(w)]);
                   FIS = addMF(FIS,'kd2Y','constant',K(2,8,i,j,k,q,w),'Name',['kd2Y',num2str(i),num2str(j),num2str(k),num2str(q),num2str(w)]);
                    ru=ru+1;
              end
          end
        end
    end
end

FIS = addRule(FIS,ruleList);
gensurf(FIS)
%%
                  a1=-pi/3:0.4:pi/3;
                  bb1=-pi/6:0.2:pi/6;
                  c1=-2*pi:2.4:2*pi;
                  d1=-2*pi:2.4:2*pi;
                  e1=-pi/2:0.6:pi/2;
for i = 1:6
    for j = 1:6
        for k = 1: 6
          for q = 1:6
              for w = 1:6

 LookUpTableData(:,i,j,k,q,w) = evalfis(FIS,[a1(i)  c1(k) d1(q) bb1(j) e1(w) ]);
              end
          end
        end
    end
end
 LookUpTableDatak1theta(:, : ,: ,:, :)= LookUpTableData(1,:,:,:,:,:);
LookUpTableDatad1theta(:, : ,: ,:, :)= LookUpTableData(2,:,:,:,:,:);
LookUpTableDatak1alpha(:, : ,: ,:, :)= LookUpTableData(3,:,:,:,:,:);
LookUpTableDatad1alpha(:, : ,: ,:, :)= LookUpTableData(4,:,:,:,:,:);
LookUpTableDatak1phi(:, : ,: ,:, :)= LookUpTableData(5,:,:,:,:,:);
LookUpTableDatad1phi(:, : ,: ,:, :)= LookUpTableData(6,:,:,:,:,:);
LookUpTableDatak1Y(:, : ,: ,:, :)= LookUpTableData(7,:,:,:,:,:);
LookUpTableDatad1Y(:, : ,: ,:, :)= LookUpTableData(8,:,:,:,:,:);
LookUpTableDatak2theta(:, : ,: ,:, :)= LookUpTableData(9,:,:,:,:,:);
LookUpTableDatad2theta(:, : ,: ,:, :)= LookUpTableData(10,:,:,:,:,:);
LookUpTableDatak2alpha(:, : ,: ,:, :)= LookUpTableData(11,:,:,:,:,:);
LookUpTableDatad2alpha(:, : ,: ,:, :)= LookUpTableData(12,:,:,:,:,:);
LookUpTableDatak2phi(:, : ,: ,:, :)= LookUpTableData(13,:,:,:,:,:);
LookUpTableDatad2phi(:, : ,: ,:, :)= LookUpTableData(14,:,:,:,:,:);
LookUpTableDatak2Y(:, : ,: ,:, :)= LookUpTableData(15,:,:,:,:,:);
LookUpTableDatad2Y(:, : ,: ,:, :)= LookUpTableData(16,:,:,:,:,:);
%%
a=0;
b=0;
c=0;
M=double([M11(a,b,c),M12(a,b,c),M13(a,b,c),M14(a,b,c);M12(a,b,c),M22(a,b,c),M23(a,b,c),M24(a,b,c);M13(a,b,c),M23(a,b,c),M33(a,b,c),M34(a,b,c);M14(a,b,c),M24(a,b,c),M34(a,b,c),M44(a,b,c)]);
Mi=inv(M);