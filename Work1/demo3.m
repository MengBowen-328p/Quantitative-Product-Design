% t=-1:0.01:5;
% f1=((t>0)-(t>3));
% f2=exp(-t).*(t>0);
% f3=conv(f1,f2);f3=f3*0.01;
% k=2*length(t)-1;
% k3=linspace(2*t(1),2*t(end),k);
% subplot(2,2,1)
% plot(t,f1);
% title('f1(t)')
% xlabel('t')
% ylabel('f1(t)')
% subplot(2,2,2)
% plot(t,f2)
% title('f2(t)')
% xlabel('t')
% ylabel('f2(t)')
% subplot(2,2,3)
% plot(k3,f3);
% h=get(gca,'position');
% h(3)=2.5*h(3);
% set(gca,'position',h);
% title('f(t)=f1(t)*f2(t)');
% xlabel('t');
% ylabel('f(t)');
g_signal_t = 0:1/50:10-1/50
k = 2*length(g_signal_t)-1;
b = linspace(2*g_signal_t(1),g_signal_t(end),k);
b

