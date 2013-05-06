clf; clear all; clc;
load Vb_1V_b1
plot(time, smooth(V), 'r.'); hold on

load Vb_1V_b2
plot(time, smooth(V), 'b.')

load Vb_1V_b3
plot(time, smooth(V), 'k.')

xlim([-.5e-4 .5e-4])
ylim([-.5 6.5])
xlabel 'Time (seconds)'
ylabel 'Output Voltage (V)'
title('Moderate Bias Voltage Oscillator','fontsize',20)
legend('Branch 1','Branch 2 (current-starved)', 'Branch 3')

print '-depsc' moderate_bias
print '-dpng'  moderate_bias