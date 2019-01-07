function [ p,q] = ranprime( maxN ) %generates two large random prime numbers
x=sqrt(maxN);
x=floor(x);
iscomposite=zeros(1,maxN);
for i=2:x
    if iscomposite(i)==0
        for j=(2*i):i:maxN
            iscomposite(j)=1;
        end
    end
end
k=0;
for i=1:maxN
    if iscomposite(i)==0
        k=k+1;
        primes(k)=i;
    end
end

p1= primes(randi(k));
while LucasTest(p1)==0
    p1=primes(randi(k));
end
p=(2^p1)-1;

q1=primes(randi(k));
while LucasTest(q1)==0
    q1=primes(randi(k));
end
q=(2^q1)-1;
end

