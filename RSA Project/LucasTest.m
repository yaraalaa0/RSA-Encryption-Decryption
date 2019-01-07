function [ w ] = LucasTest( r ) %tests the validation of Mersenne primes
s=4;
M=(2^r)-1;
for i=1:r-2
    s=mod((s^2)-2,M);
end
if s==0
    w=1;
else
    w=0;
end
end

