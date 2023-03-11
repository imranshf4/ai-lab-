syms z n
a=1/16^n;
ZTrans=ztrans(a);       %Z transform
disp(ZTrans);
InvrZ=iztrans(a);       %InverseZtransform
disp(InvrZ);

B=[0 1 1];
A=[1 -2 3];
roots(A)
roots(B)
zplane(B,A);

syms Z n
I=iztrans(3*Z/(Z+1));
disp(I);

clc;clear;
z=roots([1,0,2]);
p=roots([1,2,-1,1]);


clc;clear;
z=roots([1,0,0,1]);
p=roots([1,0,2,0,1]);

clc;clear;
ZZ=roots([4,8,10]);
PP=roots([2,8,18,20]);


clc;clear;
num=[1,0,0,1];
den=[1,0,2,0,1];
systf=tf(num,den);
pzmap(systf);






