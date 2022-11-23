function [time,I] = I_1_3_waveform()
    tmax = 10;
    time = linspace(0,tmax,1000);
    t1 = 1; t2 = 2; t3 = 2.5; t4 = 3.5;
    shift = tmax/2;

    I_amp = 4;
    I = zeros(1);

    for i=1:length(time)
        if (time(i) > t1 && time(i) < t2) || (time(i) > (t1+shift) && time(i) < (t2+shift))
            I(i) = I_amp;
        elseif (time(i) > t3 && time(i) < t4) || (time(i) > (t3+shift) && time(i) < (t4+shift))
            I(i) = -I_amp;
        else
            I(i)=0;
        end
    end
end