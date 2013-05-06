clear all; clc; clf

load Vb_pt75_b1
plot(.75, 2.4667e+04, 'rs','MarkerFaceColor','r'); hold on;

load Vb_pt75_b2
plot(.75,  2.4862e+04, 'gd','MarkerFaceColor','g'); hold on;

load Vb_pt75_b3
plot(.75, 2.4911e+04, 'ko','MarkerFaceColor','k'); hold on;

load Vb_1V_b1
plot(1, 3.0313e+04, 'rs','MarkerFaceColor','r');
load Vb_2V_b1
plot(2, 6.2621e+04, 'rs','MarkerFaceColor','r'); 
load Vb_3V_b1
plot(3, 6.9520e+04, 'rs','MarkerFaceColor','r');
load Vb_4V_b1
plot(4, 7.1820e+04, 'rs','MarkerFaceColor','r');
load Vb_5V_b1
plot(5, 7.2429e+04, 'rs','MarkerFaceColor','r')


load Vb_1V_b2
plot(1, 3.0464e+04, 'gd','MarkerFaceColor','g');
load Vb_2V_b2
plot(2, 6.2088e+04, 'gd','MarkerFaceColor','g'); 
load Vb_3V_b2
plot(3,  7.0093e+04, 'gd','MarkerFaceColor','g');
load Vb_4V_b2
plot(4,  7.1899e+04, 'gd','MarkerFaceColor','g');
load Vb_5V_b2
plot(5,  7.2066e+04, 'gd','MarkerFaceColor','g')


load Vb_1V_b3
plot(1, 3.0048e+04, 'ko','MarkerFaceColor','k');
load Vb_2V_b3
plot(2,  6.2034e+04, 'ko','MarkerFaceColor','k'); 
load Vb_3V_b3
plot(3,  6.9701e+04, 'ko','MarkerFaceColor','k');
load Vb_4V_b3
plot(4,  7.1660e+04, 'ko','MarkerFaceColor','k');
load Vb_5V_b3
plot(5,  7.2369e+04, 'ko','MarkerFaceColor','k')

legend('Branch 1', 'Branch 2','Branch 3','location','southeast')
xlim([.5 5.5])
xlabel 'Bias Voltage (V)'
ylabel 'Fundamental Frequency of Output (Hz)'
title('Measured Fundamental Frequency of Output','fontsize',20)

print '-depsc' freqs
print '-dpng'  freqs

