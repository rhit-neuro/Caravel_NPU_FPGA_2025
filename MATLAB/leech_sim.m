clear all;
close all;
    
tol1 = 1e-15;

tic
[V11,V21,g1,g2,h1,h2,t1,mht1,soln1] = leech_sim15(tol1);
toc


 %% mht 
 % 1 |m_inf_CaF  % 2 |tau_m_CaF  % 3 |h_inf_CaF
 % 4 |tau_h_CaF  % 5 |m_inf_CaS  % 6 |tau_m_CaS
 % 7 |h_inf_CaS  % 8 |tau_h_CaS  % 9 |m_inf_P
 % 10|tau_m_P    % 11|m_inf_Na   % 12|tau_m_Na
 % 13|h_inf_Na   % 14|tau_h_Na   % 15|m_inf_K1
 % 16|tau_m_K1   % 17|h_inf_K1   % 18|tau_h_K1
 % 19|m_inf_K2   % 20|tau_m_K2   % 21|m_inf_A
 % 22|tau_m_A    % 23|h_inf_A    % 24|tau_h_A
 % 25|m_inf_h    % 26|tau_m_h
%%

tol2 = 1e-6;

tic
% [V12,V22,t2,mht2,soln2] = leech_sim_lookup(tol2);
toc;

figure;
plot(t1*10^-3,V11*10^-3,'-b', t1*10^-3,V21*10^-3, '-m');
legend("V11 membrane Voltage", "V21 membrane voltage");
xlabel('Time (s)');
ylabel('Voltage (V)');
title('Membrane Potential');

%syn model equations for state vars
    tau_rise = 2.5;    
    tau_decay = 11;
    V_threshold = -10;
    h0 = 0.035;
    t0 = 0;


    % g and h
    dir1 = 0*(V21<V_threshold)+h0*(V21>V_threshold); %dirac thresholding
    dir2 = 0*(V11<V_threshold)+h0*(V11>V_threshold);
    
    % I_SynS
    gbar_SynS = 40;
    E_SynS = -62.5;
    tau_peak = t0 + (tau_decay * tau_rise) / ... 
        (tau_decay - tau_rise) * log(tau_decay / tau_rise);
    f1 = 1 / ((-exp(-(tau_peak - t0) / tau_rise) + ...
        exp(-(tau_peak - t0) / tau_decay)));
    g_SynS1 = gbar_SynS * f1 * g1;

    f2 = 1 / ((-exp(-(tau_peak - t0) / tau_rise) + ...
        exp(-(tau_peak - t0) / tau_decay)));
    g_SynS2 = gbar_SynS * f2 * g2;

    I_SynS1 = g_SynS1 .* (V11 - E_SynS);
    I_SynS2 = g_SynS2 .* (V21 - E_SynS);



    %define fixed grid
    % t_query = linspace(5000,15000,100);
    % %Evaluate differential equation solution structure
    % y_query = deval(soln1, t_query);
    % y_query_hexSPF = num2hex(single(y_query));
    
    t_fixed = linspace(0,10000,500);
    %Evaluate differential equation solution structure
    y_fixed = deval(soln1,t_fixed);
    V11_fixed = ((y_fixed(1,:)));
    g1_fixed = ((y_fixed(17,:)));
    h1_fixed = ((y_fixed(18,:)));
    V21_fixed = ((y_fixed(19,:)));
    g2_fixed = ((y_fixed(35,:)));
    h2_fixed = ((y_fixed(36,:)));
    
    V11_fixed_SPF = (single(y_fixed(1,:)));
    g1_fixed_SPF = (single(y_fixed(17,:)));
    h1_fixed_SPF = (single(y_fixed(18,:)));
    V21_fixed_SPF = (single(y_fixed(19,:)));
    g2_fixed_SPF = (single(y_fixed(35,:)));
    h2_fixed_SPF = (single(y_fixed(36,:)));
    
    % V11_fixed_hexSPF = num2hex(single(y_fixed(1)));
    % V21_fixed_hexSPF = num2hex(single(y_fixed(1)));
    % g1_fixed_hexSPF = num2hex(single(y_fixed(17)));
    % h1_fixed_hexSPF = num2hex(single(y_fixed(18)));
    % v2_fixed_hexSPF = num2hex(single(y_fixed(19)));
    % g2_fixed_hexSPF = num2hex(single(y_fixed(35)));
    % h2_fixed_hexSPF = num2hex(single(y_fixed(36)));

    dir1_fixed = 0*(V21_fixed<V_threshold)+h0*(V21_fixed>V_threshold); %dirac thresholding
    dir2_fixed = 0*(V11_fixed<V_threshold)+h0*(V11_fixed>V_threshold);
    g_SynS1_fixed = gbar_SynS * f1 * g1_fixed;
    g_SynS2_fixed = gbar_SynS * f2 * g2_fixed;
    I_SynS1_fixed = g_SynS1_fixed .* (V11_fixed - E_SynS);
    I_SynS2_fixed = g_SynS2_fixed .* (V21_fixed - E_SynS);

fixedDataT = table(t_fixed.', V11_fixed.', h1_fixed.', g1_fixed.', dir1_fixed.',g_SynS1_fixed.',I_SynS1_fixed.',V21_fixed.', h2_fixed.', g2_fixed.', dir2_fixed.',g_SynS2_fixed.',I_SynS2_fixed.');
filename = 'leechSimDataFixed.xlsx';
writetable(fixedDataT,filename,'Sheet',1);


figure;
plot(t_fixed*10^-3,V11_fixed*10^-3,'-b', t_fixed*10^-3,V21_fixed*10^-3, '-m');
legend("V11 membrane Voltage", "V21 membrane voltage");
xlabel('Time (s)');
ylabel('Voltage (V)');
title('Membrane Potential');

figure;
plot(t_fixed*10^-3,I_SynS1_fixed*10^-3,'-b', t_fixed*10^-3,I_SynS2_fixed*10^-3, '-m');
legend("V11 Isyn", "V21 Isyn");
xlabel('Time (s)');
ylabel('Synaptic Current (A)');
title('Calculated Synaptic Current');

    
% %write expected values to excel spreadsheet
% ConstantT=table(E_SynS,f1,f2,gbar_SynS,h0,V_threshold,tau_peak,tau_decay,tau_rise,t0,soln1);
% DataT= table(t1.',V11.',V21.',dir1.',dir2.',h1.',h2.',g1.',g2.',g_SynS1.',g_SynS2.');
% filename = 'leechSimData.xlsx';
% writetable(ConstantT,filename,'Sheet',1);
% writetable(DataT,filename,'Sheet',2);
% writematrix(mht1.',filename,'Sheet',3);


% figure;
% plot(t2,V12);
% 
% plotSV(soln1,soln2);

% Xqt = 0:0.1:30000;
% 
% V11int = interp1(t1,V11,Xqt);   
% V12int = interp1(t2,V12,Xqt);
% count1 = 1;
% count2 = 1;
% t11=0;
% t22=0;
% for n = 1:length(Xqt)-1
%     if (V11int(n+1) > 0 && V11int(n) > 0 && V11int(n+2) > 0) 
%         if (V11int(n+1) > V11int(n))
%             if (V11int(n+1) > V11int(n+2))
%                 t11(count1) = Xqt(n+1);
%                 count1 = count1 + 1;
%             end
%         end
%     end
%     if (V12int(n+1) > 0 && V12int(n) > 0 && V12int(n+2) > 0)     
%         if (V12int(n+1) > V12int(n))
%             if (V12int(n+1) > V12int(n+2))
%                 t22(count2) = Xqt(n+1);
%                 count2 = count2 + 1;
%             end
%         end
%     end
% end
% period1111 = 0;
% period2222 = 0;
% for n = 1:length(t11)-1
%     period1111(n) = abs(t11(n+1) - t11(n));
% end
% for n = 1:length(t22)-1
%     period2222(n) = abs(t22(n+1) - t22(n));
% end
% 
% count11 = 1:length(period1111);
% count22 = 1:length(period2222);
% figure;
% plot(count11,period1111,'.',count22,period2222,'r.');
% ylabel('Time between periods');
% title('Period of exact vs period of 32 points');
% 
% figure;
% plot(Xqt,V11int,Xqt,V12int);
% xlabel('Time (ms)');
% ylabel('Voltage (mV)');
% title('Interpolated Membrane potentials');
% 
% % plotMHT(V11,t1,mht1,V12,t2,mht2);
% 
% [corr,lag] = xcorr(V11int, V12int);
% [~,I] = max(abs(corr));
% 
% time = 15000;
% 
% %plot
% 
% figure;
% plot(t1,V11,t2,V12);
% xlabel('Time (ms)');
% ylabel('Voltage (mV)');
% title('Membrane potential (exact in blue)');
% axis([time 20000 -70 20]);
% 
% figure;
% plot(lag,corr);
% title('Correlation (0s to 20s)');
% 
% Xqt = time:0.01:20000;
% 
% V11int = interp1(t1,V11,Xqt);   
% V12int = interp1(t2,V12,Xqt);
% 
% [corr,lag] = xcorr(V11int, V12int);
% [~,I] = max(abs(corr));
% 
% % plot
% figure;
% plot(lag,corr);
% title('Correlation (16s to 20s)');
% 
% lagDiff = lag(I)
% 
% figure;
% plot(t1,V11,Xqt,V11int);
% xlabel('Time (ms)');
% ylabel('Voltage (mV)');
% title('Membrane potential exact and interpolated exact');
% axis([time 20000 -70 20]);
% 
% figure;
% plot(Xqt,V11int,Xqt,V12int);
% xlabel('Time (ms)');
% ylabel('Voltage (mV)');
% title('Interpolated Membrane potentials');
% axis([time 20000 -70 20]);
% 
% figure;
% plot(Xqt-lagDiff/100,V11int,Xqt,V12int);
% xlabel('Time (ms)');
% ylabel('Voltage (mV)');
% title('Interpolated Membrane potentials corrected');
% axis([time-1 20000 -70 20]);
% 
% V11cor = interp1(Xqt-lagDiff/100,V11int,Xqt);
% 
% error_rel = abs(V11cor - V12int)./abs(V11cor);
% error_abs = abs(V11cor - V12int);
% 
% figure;
% subplot(2,1,1);
% plot(Xqt,V11cor,Xqt,V12int);
% xlabel('Time (ms)');
% ylabel('Voltage (mV)');
% title('Membrane potential 1');
% 
% subplot(2,1,2);
% plot(Xqt, error_rel);
% xlabel('Time(ms)');
% ylabel('Relative Error');
% 
% figure;
% subplot(2,1,1);
% plot(Xqt,V11cor,Xqt,V12int);
% xlabel('Time (ms)');
% ylabel('Voltage (mV)');
% title('Membrane potential 1');
% 
% subplot(2,1,2);
% plot(Xqt, error_abs);
% xlabel('Time(ms)');
% ylabel('Absolute Error');
