function fund = findFund(time, V)
 
%     clf
    [pks, locs] = findpeaks(V, 'minpeakdistance', 300);
%     plot(time, V,'b.');
%     hold on
    maxes = time(locs);
%     plot(maxes, pks,'s')
    fund = mean(1 ./ diff(maxes)) / 2;
    
end
        