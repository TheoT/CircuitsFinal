function res = findFund(time, V)

    ft = abs(fftshift(fft(V)));
    freq = linspace(0, 1 / (time(2) - time(1))/2, length(ft));
    plot(freq, ft);

end
        