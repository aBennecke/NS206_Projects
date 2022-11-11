function currentVal = Iovertime(t,startTime,endTime,constant)

    currentVal = zeros(1);
    for i = 1:length(t)
        if t(i) > startTime && t(i) < endTime
            currentVal(i) = constant;
        else
            currentVal(i) = 0;
        end
    end

end
