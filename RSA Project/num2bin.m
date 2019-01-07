function [ a,k ] = num2bin( n )%gives the binary representation and its number of bits of a decimal number 
k=0;
while (n>0)
    k=k+1;
    a(k)=mod(n,2);
    n=floor(n/2);
end

end

