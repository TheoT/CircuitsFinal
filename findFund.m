function fund = findFund(time, V)

    [pks, locs] = findpeaks(V, 'minpeakdistance', 100);
    maxes = time(locs);
    fund = mean(1 ./ diff(maxes)) / 2;
    
end
        