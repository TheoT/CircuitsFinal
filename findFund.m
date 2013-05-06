function fund = findFund(time, V)

    [pks, locs] = findpeaks(V, 'minpeakdistance', 100);
    fund = 1 / (time(locs(3)) - time(locs(2))) / 2;
    
end
        