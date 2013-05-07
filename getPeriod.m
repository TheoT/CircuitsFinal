function getPeriod()
    locs = ginput(2);
    freq = 1 / (locs(2) - locs(1))
    disp(freq)
end