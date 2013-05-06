clear all; close all;
load_sim;

figure(1);
plot(dataVB75.time,dataVB75.b1,'.'); hold on;
plot(dataVB75.time,dataVB75.b2,'k.');
plot(dataVB75.time,dataVB75.b3,'r.');
xlim([4e-4 1e-3]);
ylim([-1 6]);
legend('Branch 1', 'Branch 2', 'Branch 3 (current starved)','location','best');
title('Signal For Low Bias Voltage (Simulation)','FontSize',14);
xlabel('Time (s)','FontSize',14)
ylabel('Voltage (V)','FontSize',14)

print '-depsc' lowBiasSigSim

figure(2);
plot(dataVB3.time,dataVB3.b1,'.'); hold on;
plot(dataVB3.time,dataVB3.b2,'k.');
plot(dataVB3.time,dataVB3.b3,'r.');
xlim([1e-4 2e-4]);
ylim([-1 6]);
legend('Branch 1', 'Branch 2', 'Branch 3 (current starved)','location','best');
title('Signal For High Bias Voltage (Simulation)','FontSize',14);
xlabel('Time (s)','FontSize',14)
ylabel('Voltage (V)','FontSize',14)

print '-depsc' highBiasSigSim

figure(3);
plot(dataVB75.time,dataVB75.b2,'b.'); hold on;
plot(dataVB1.time,dataVB1.b2,'k.');
plot(dataVB2.time,dataVB2.b2,'r.');
plot(dataVB3.time,dataVB3.b2,'c.');
plot(dataVB4.time,dataVB4.b2,'g.');
plot(dataVB5.time,dataVB5.b2,'m.');
xlim([7e-4 8e-4]);
legend('.75V','1V','2V','3V','4V','5V','location','best');
title('Branch 2 Signal For Different Bias Voltages','FontSize',14);
xlabel('Time (s)','FontSize',14)
ylabel('Voltage (V)','FontSize',14)

print '-depsc' branch2DiffBiasSim

figure(4);
dataVB75.freq1=7.7286e+03;
dataVB75.freq2=7.7500e+03;
dataVB75.freq3=7.7286e+03;

dataVB1.freq1=1.2572e+04;
dataVB1.freq2=1.2581e+04;
dataVB1.freq3=1.2543e+04;

dataVB2.freq1=2.3120e+04;
dataVB2.freq2=2.3120e+04;
dataVB2.freq3=2.3133e+04;

dataVB3.freq1=2.3728e+04;
dataVB3.freq2=2.3728e+04;
dataVB3.freq3=2.3728e+04;

dataVB4.freq1=2.4152e+04;
dataVB4.freq2=2.4111e+04;
dataVB4.freq3=2.4152e+04;

dataVB5.freq1=2.4186e+04;
dataVB5.freq2=2.4151e+04;
dataVB5.freq3=2.4192e+04;

vbs=[dataVB75.vb,dataVB1.vb,dataVB2.vb,	dataVB3.vb,	dataVB4.vb,	dataVB5.vb,];

freq1s=[dataVB75.freq1,dataVB1.freq1,dataVB2.freq1,dataVB3.freq1,dataVB4.freq1,dataVB5.freq1];
freq2s=[dataVB75.freq1,dataVB1.freq2,dataVB2.freq2,dataVB3.freq2,dataVB4.freq2,dataVB5.freq2];
freq3s=[dataVB75.freq1,dataVB1.freq3,dataVB2.freq3,dataVB3.freq3,dataVB4.freq3,dataVB5.freq3];

plot(vbs,freq1s,'.b','MarkerSize',18); hold on;
plot(vbs,freq2s,'.r','MarkerSize',18);
plot(vbs,freq3s,'.k','MarkerSize',18);

xlim([0 6]);

legend('Branch 1', 'Branch 2','Branch 3 (current starved)','location','southeast');
title('Fundamental Frequency of Different Bias Voltages','FontSize',14);
xlabel('Bias Voltage (V)','FontSize',14);
ylabel('Frequency (f)','FontSize',14);

print '-depsc' biasFrequenciesSim
print '-dpng' biasFrequenciesSim