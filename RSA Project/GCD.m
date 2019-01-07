function [ z ] = GCD( e,n ) %gives the greatest common divisor of two numbers
if e==0
    z=n;
else
    z=GCD(mod(n,e),e);
end


end

