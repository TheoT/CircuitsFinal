clf; clear all; clc
load Vb_5V_b1.mat
plot(time, smooth(V, 20),'r.'); hold on;

load Vb_5V_b2.mat
plot(time, smooth(V, 20),'g.')

load Vb_5V_b3.mat
plot(time, smooth(V, 20),'k.')

xlim([-.25e-4 .25e-4])
ylim([-.5 6])
xlabel 'Time (seconds)'
ylabel 'Output Voltage (V)'
title('Large Bias Voltage Oscillator','fontsize',20)
legend('Branch 1','Branch 2 (current-starved)', 'Branch 3')

print '-depsc' large_bias
print '-dpng'  large_bias