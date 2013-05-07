clf; clear all; clc;
load Vb_pt75_b1
plot(time, smooth(V,50), 'r.'); hold on;

load Vb_1V_b1
plot(time, smooth(V,50),  'b.')

load Vb_2V_b1
plot(time, smooth(V,50),  'k.')

load Vb_3V_b1
plot(time, smooth(V,50), 'm.')

load Vb_4V_b1
plot(time, smooth(V,50),  'g.')

load Vb_5V_b1
plot(time, smooth(V,50),  'c.')

xlim([-.15e-4 .15e-4])
ylim([-1 7])
leg = legend('.75V bias','1V bias','2V bias','3V bias', '4V bias', '5V bias', 'location','northwest');
set(leg, 'fontsize',8)
xlabel 'Time (seconds)'
ylabel 'Voltage (V)'
title('Branch 1 Output for Different Bias Voltages', 'fontsize',16)

print '-depsc' 'b1_out'
print '-dpng'  'b1_out'
