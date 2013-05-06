clear all; clc; clf

load Vb_5V_b1
plot(time, smooth(V, 50), '.')
findFund(time, V)