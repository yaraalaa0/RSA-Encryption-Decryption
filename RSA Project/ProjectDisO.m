maxN=randi([2,20]);
[p q]=ranprime(maxN);
n=p*q;
e=randi(100);
while GCD(e,n)>1
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
display(C)
display(n)
display(e)