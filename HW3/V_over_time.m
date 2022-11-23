function out = V_over_time(t,V_prot,pStart,pEnd)
    out = zeros(1);
    for i = 1:length(t)
        if t(i) > pStart && t(i) < pEnd
            out(i) = V_prot;
        else
            out(i) = 0;
        end
    end
end