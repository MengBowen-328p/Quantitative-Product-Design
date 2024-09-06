clear 
close all 
clc

t=[-5:0.01:5]

A1 = 1;
f1 = 10;
w1 = 2*pi*f1
p1 = 0

T1 = 1
fs1 = 20*f1
d1 = 1/fs1

t1 = -T1/2:d1:T1/2
s1 = A1*sin(w1*t+p1)


% plot(t1,s1)

A2 = 5;
f2 = 8;
w2 = 2*pi*f2
p2 = 0

T2 = 1
fs2 = 20*f2
d2 = 1/fs2

t2 = -T2/2:d2:T2/2
s2 = A2*sin(w2*t+p2)

mix = s2+s1
figure(1)
plot(t,mix)