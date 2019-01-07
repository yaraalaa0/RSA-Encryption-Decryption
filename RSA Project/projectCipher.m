primes=[2 3 5 7 11 13 17 19 23 29 31 37 41 47 53 59 61 67 71 73 79 83 89 97 101 103 107 109 113 127 131 137 139 149 151 157 163 167 173 179 181 191 193 197 199]
L=length(primes);
p=primes(randi([1 L]));
q=primes(randi([1 L]));
n=p*q;
e=randi(100);
while GCD(e,(p-1)*(q-1))>1
    e=randi(100);
end
fileID= fopen('Original.txt');
A=fscanf(fileID,'%c')
A=int32(A);
s=length(A);
for i=1:s
    C(i)=modexp(A(i),e,n);
end
dlmwrite('CipheredText.txt',C,'delimiter','\t')
display(p)
display(q)
display(e)





