clf; clear all; clc
load Vb_pt75_b1.mat
plot(time, smooth(V),'r.')
hold on

load Vb_pt75_b2.mat
plot(time, smooth(V, 50),'b.')

load Vb_pt75_b3.mat
plot(time, smooth(V),'g.')

xlim([-.5e-4 .5e-4])
ylim([0 6])
xlabel 'Time (seconds)'
ylabel 'Output Voltage (V)'
title('Small Bias Voltage Oscillator', 'fontsize',20)
legend('Branch 1','Branch 2 (current-starved)', 'Branch 3')

print '-depsc' small_bias
print '-dpng'  small_bias