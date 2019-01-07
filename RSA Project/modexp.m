function [ x ] = modexp( M,e,n ) %gives the modular exponentiation result of (b^e)mod m 
[a,k]=num2bin(e);
x=1;
power=mod(M,n);
for i=1:k
    if a(i)==1
        x=mod(x*power, n);
    end
    power=mod(power^2,n);
end
end

