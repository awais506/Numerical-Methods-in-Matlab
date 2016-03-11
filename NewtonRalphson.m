%Author: Muhammad Awais 2012-ee-506 UET Lahore
%This Function uses Newton Ralphson Method to find root of a function
%Input: Function , initial guess, minmum tolerace 
%Output: Roots of function, Number of iterations used.
%Please input function in following way...
%syms x
%f=x.^3-20
function [y,iteration,err]=NewtonRalphson(f,x0,itr)

g=diff(f);      %Differentiation of f
%older and new is to hold values of x in each iteration and last iteration.
old=0;
new=1;
%Number of iterations that it has to complete 
iteration=1;

while ( iteration<itr  ) 
   x1=8;
    old=x0;
     x1=x0-(double(subs(f,x0))/double(subs(g,x0)));  %Newton Ralphson Formula
    new=x1;
    x0=x1;
    iteration=iteration+1;
    err=((new-old)/new);
     
end
y=x1;

