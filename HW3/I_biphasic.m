function out = I_biphasic(V,Rs,Rct,tPulse,Rpar,Cdl)
    % Current with voltage stimulation
    out = (V/(Rs+Rct)).*(1+(Rct/Rs)*exp(-tPulse/(Rpar*Cdl)));
   
    % Current following voltage stimulation
    tau = Rpar*Cdl;

    t1 = linspace(0,1e-3,300);
    out(200:499) = -exp(-t1/tau)*(max(V)/(Rs+Rct));

    t2 = linspace(0,1e-3,400);
    out(600:999) = -exp(-t2/tau)*(max(V)/(Rs+Rct));
end