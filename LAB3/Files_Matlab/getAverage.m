function bar_v = getAverage(v, tail)

% Convert from tail% to tail absolute
tail_abs = floor(length(v) * tail / 100);

% Last tail samples of v
v_tail = v(end-(tail_abs-1):end, 1);

% Empirical mean
bar_v = mean(v_tail);

end

