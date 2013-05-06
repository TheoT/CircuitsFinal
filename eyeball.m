function fund = eyeball(time, V)
 
    clf
    [pks, locs] = findpeaks(V, 'minpeakdistance', 300);
    plot(time, V,'b.');
    hold on
    maxes = time(locs);
    plot(maxes(end-2), pks(end-2),'s');
    plot(maxes(end-3), pks(end-3),'s');
    fund = 1 / (maxes(end-2) - maxes(end-3)) / 2;
    
end
        