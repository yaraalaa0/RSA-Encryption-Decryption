p=163;
q=17;
n=p*q;
e=43;
w=p-1;
z=q-1;
j=1;
d=((w*z*j)+1)/e;
while (d/floor(d))>1
    j=j+1;
    d=((w*z*j)+1)/e;
end
fileID=fopen('CipheredText.txt');
X=fscanf(fileID,'%g');
X=X';
s=length(X);
for i=1:s
    D(i)=modexp(X(i),d,n);
end
display(D)
D=char(D)
fileID=fopen('DecipheredText.txt','wt');
fprintf(fileID,'%c',D)
fclose(fileID);


