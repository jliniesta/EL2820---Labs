function bar_y = getStationaryAverages(y_step, Nwr, tail)

bar_y = zeros(Nwr, 1);
length_step = length(y_step)/Nwr;

% For each one of the different levels
for i = 1:Nwr
    % Obtain a segment of y_step of length_step samples
    y_part = y_step((i-1)*length_step+1:i*length_step);

    % Do the empirical mean of the last tail% samples of y_part
    bar_y(i) = getAverage(y_part, tail);
end

end