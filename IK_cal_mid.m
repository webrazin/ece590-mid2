l1=.3;
l2=.2;
l3=.1;

xe=.1;
ye=.1;
thres=.003;

theta1=0;
theta2=0;
theta3=0;
alpha=.01;
ad1=.02;
ad2=.04;
ad3=.06;

r= sqrt(xe^2+ye^2);

while(r>thres)
    
    x = l1*cos(theta1)+l2*cos(theta1+theta2)+l3*cos(theta1+theta2+theta3);
    y =  l1*sin(theta1)+l2*sin(theta1+theta2)+l3*sin(theta1+theta2+theta3);
    
    %rerr= sqrt((xe-x)*(xe-x)+(ye-y)^2);
    
    % advancing position
    ax = l1*cos(theta1+ad1)+l2*cos(theta1+theta2+ad2)+l3*cos(theta1+theta2+theta2+ad3)
    ay=  l1*sin(theta1+ad1)+l2*sin(theta1+theta2+ad2)+l3*sin(theta1+theta2+theta2+ad3)
    
    % finding the error
    
    errx=ax-x
    erry=ay-y
    
   % errr= sqrt(errx^2+erry^2);
    
    newdiffx=xe-x;
    newdiffy=ye-y;
   
   jack1=errx/ad1;
   jack2=erry/ad1;
   
   jack_arry=[jack1,jack2];
   
   jplus=transpose(jack_arry);
   
   %jacobian([errx, erry], [ad1, ad1]);
   
  % psudo=pinv(jacktest); 
   
   theta1=theta1+alpha*(jplus);
   theta2=theta2+alpha*(jplus);
   theta3=theta3+alpha*(jplus);
   
   

    
end
 
theta1
theta2
theta3
    
