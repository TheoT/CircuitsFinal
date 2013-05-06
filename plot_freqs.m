clear all; clc; clf

load Vb_pt75_b1
plot(.75, 2.2915e+04, 'rs','MarkerFaceColor','r'); hold on;

load Vb_pt75_b2
plot(.75,  2.1186e+04, 'gd','MarkerFaceColor','g'); hold on;

load Vb_pt75_b3
plot(.75, 2.6738e+04, 'ko','MarkerFaceColor','k'); hold on;

load Vb_1V_b1
plot(1, 3.7147e+04, 'rs','MarkerFaceColor','r');
load Vb_2V_b1
plot(2, 6.2189e+04, 'rs','MarkerFaceColor','r'); 
load Vb_3V_b1
plot(3, 7.0028e+04, 'rs','MarkerFaceColor','r');
load Vb_4V_b1
plot(4, 7.1736e+04, 'rs','MarkerFaceColor','r');
load Vb_5V_b1
plot(5, 7.2674e+04, 'rs','MarkerFaceColor','r')


load Vb_1V_b2
plot(1, 3.3829e+04, 'gd','MarkerFaceColor','g');
load Vb_2V_b2
plot(2, 6.5104e+04, 'gd','MarkerFaceColor','g'); 
load Vb_3V_b2
plot(3, 6.7385e+04, 'gd','MarkerFaceColor','g');
load Vb_4V_b2
plot(4, 6.9832e+04, 'gd','MarkerFaceColor','g');
load Vb_5V_b2
plot(5,  7.2674e+04, 'gd','MarkerFaceColor','g')


load Vb_1V_b3
plot(1, 2.9586e+04, 'ko','MarkerFaceColor','k');
load Vb_2V_b3
plot(2,  5.7208e+04, 'ko','MarkerFaceColor','k'); 
load Vb_3V_b3
plot(3,  6.4851e+04, 'ko','MarkerFaceColor','k');
load Vb_4V_b3
plot(4,  7.3529e+04, 'ko','MarkerFaceColor','k');
load Vb_5V_b3
plot(5, 7.8493e+04, 'ko','MarkerFaceColor','k')

legend('Branch 1', 'Branch 2','Branch 3','location','southeast')
xlim([.5 5.5])
xlabel 'Bias Voltage (V)'
ylabel 'Fundamental Frequency of Output (Hz)'
title('Fundamental Frequency of Output','fontsize',20)

print '-depsc' freqs
print '-dpng'  freqs

