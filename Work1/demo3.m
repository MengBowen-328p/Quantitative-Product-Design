% 设置参数

Fs = 1000;  % 采样率

Fc = 100;   % 截止频率

N = 60;  % 滤波器的阶数

T = 1/Fs;  % 采样周期

L = 1000;  % 信号长度

t = (0:L-1)*T;  % 时间向量

% 生成包含噪声的信号

S = 0.7*sin(2*pi*50*t) + sin(2*pi*120*t);

X = S + 2*randn(size(t));

% 设计滤波器

win = hann(N+1);  % 汉宁窗

b = fir1(N, Fc/(Fs/2), 'low', win);

% 对信号进行滤波

Y = filter(b, 1, X);

% 绘制原始信号和滤波后的信号

figure;

subplot(2,1,1);

plot(Fs*t(1:50), X(1:50))

title('原始信号');

subplot(2,1,2);

plot(Fs*t(1:50), Y(1:50))

title('滤波后的信号');