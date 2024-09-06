% t=-3:0.01:5;
% t0=1;
% y=impseq(t,t0);
% plot(t,y)
% axis([-3,5,-0.2,1.2])

T=10e-5;  %脉冲宽度
N=length(0:1/50:10-1/50);   %采样点数
t=linspace(-T/2,T/2,N);%横坐标
y=4*(chirp(t,0,10e-5,1e6))%纵坐标
figure;
plot(t,y);
length(0:1/50:10-1/50)
