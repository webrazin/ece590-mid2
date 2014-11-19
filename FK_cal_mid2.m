
promptRound = 'Enter the Number of Links and Angles:';
round=input(promptRound);

i=1;

prevAng=0;
result=[0;0;0];

while(i<=round)
 promptLen = 'Enter the value of link length:';   
 len=input(promptLen);
 
 promptAngRad = 'Enter the value of Angle in radian:'; 
 angRad=input(promptAngRad);
 ang=angRad*57.3;
 
 lenVect=[len;0;0];
 rotMat=[cosd(ang+prevAng), -sind(ang+prevAng),0;sind(ang+prevAng),cosd(ang+prevAng),0;0,0,1];
 
 transfromMat=rotMat*lenVect;
 result=result+transfromMat;
 
 prevAng=prevAng+ang;
 i=i+1;
end

result


