
%Author: Muhammad Awais
%UET Lahore, Electrical Engineering
%fb/awais12506

function [iteration,xm]=Bisection(xl,xu,f,e)

%Find Root of a equation by method of BiSection
%Input: Lower Limit, Upper Limit, Function, Error Tolerance
%Please Insert f as f=@(x)x.^2+9*x+3
%Output: Root of the equation with given precison and Number of iterations
%Exception: Give error if Equation is not convergent or roots are dont give
%%
%postive and negative values of the function

iteration=0;     %To see how many iterations, equation took to solve
xm=xl;
error=1;
if  (f(xl)*f(xu)>0)
    disp('Interval have some error')
 
else
     while ( abs(error) > abs(e) ||iteration<=1000 )
        iteration=iteration+1;
        xmOld=xm;
        xm=(xl+xu)/2;   %Mid point
        xmNew=xm;
        
        if f(xl)*f(xm)<0   %if f(xm) is neg, equate xu with xm
            xu=xm;
        else if f(xl)*f(xm)>0 %if f(xm) is pos, equate xl with xm
            xl=xm;
            else            %it means xm is our root 
            break
            end     
        error=(xmNew-xmOld)/xmNew;   %Error 
        fprintf('Iteration numb=\n',iteration')
        end
         
    end
    
end
end