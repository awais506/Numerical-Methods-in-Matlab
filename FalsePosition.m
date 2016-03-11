
%Author: Muhammad Awais
%UET Lahore, Electrical Engineering
%fb/awais12506

function [xr,iteration]=FalsePosition(xl,xu,f,e)

%Find Root of a equation by method of BiSection
%Input: Lower Limit, Upper Limit, Function, Error Tolerance
%Please Insert f as f=@(x)x.^2+9*x+3
%Output: Root of the equation with given precison
%Exception: Give error if Equation is not convergent or roots are dont give
%%
%postive and negative values of the function

iteration=1;     %To see how many iterations, equation took to solve
xr=xl;
error=1;
if  (f(xl)*f(xu)>0)
    disp('Interval have some error')
    
else
     while ( abs(error) > abs(e) ||iteration<=1000 )
        iteration=iteration+1;
        xrOld=xr;
        xr=xu-( (f(xu)*(xl-xu)) /(f(xl)-f(xu)));   %Mid point
        xrNew=xr;
        if f(xl)*f(xr)<0   %if f(xm) is neg, equate xu with xm
            xu=xr;
        else if f(xl)*f(xr)>0 %if f(xm) is pos, equate xl with xm
            xl=xr;
            else            %it means xm is our root 
            break
            end     
        error=(xrNew-xrOld)/xrNew;   %Error 
        
        end
        
    end
    
end
end