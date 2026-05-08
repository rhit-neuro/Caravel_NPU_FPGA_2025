function [V1,V2,g1,g2,h1,h2,t,mht,soln] = leech_sim15(tol)

    % time
    t0 = 0;
    tf = 30000;

    a = 0.2;
    b = 0.7;
    c = 0.1;
    d = 0.8;

    % initial conditions
    V1 = -62.5;
    m_CaF1 = c;
    h_CaF1 = d;
    m_CaS1 = c;
    h_CaS1 = d;
    m_P1 = c;
    m_Na1 = c;
    h_Na1 = d;
    m_K11 = c;
    h_K11 = d;
    m_K21 = c;
    m_A1 = c;
    h_A1 = d;
    m_h1 = d; %opposite
    A1 = 0;
    P1 = 0;
    g1 = 0;
    h1 = 0;
    V2 = -51;
    m_CaF2 = a;
    h_CaF2 = b;
    m_CaS2 = a;
    h_CaS2 = b;
    m_P2 = a;
    m_Na2 = a;
    h_Na2 = b;
    m_K12 = a;
    h_K12 = b;
    m_K22 = a;
    m_A2 = a;
    h_A2 = b;
    m_h2 = b; %opposite
    A2 = 0;
    P2 = 0;
    g2 = 0;
    h2 = 0;

    y0 = [V1; m_CaF1; h_CaF1; m_CaS1; h_CaS1; m_P1; m_Na1; h_Na1; ...
        m_K11; h_K11; m_K21; m_A1; h_A1; m_h1; A1; P1; g1; h1; ...
        V2; m_CaF2; h_CaF2; m_CaS2; h_CaS2; m_P2; m_Na2; h_Na2;
        m_K12; h_K12; m_K22; m_A2; h_A2; m_h2; A2; P2; g2; h2];

    % solve
    options = odeset('RelTol',tol);
    [soln] = ode15s(@leech_odes,[t0, tf],y0,options);
    t = soln.x;
    V1 = soln.y(1,:);
    V2 = soln.y(19,:);
    g2 = soln.y(35,:);
    g1 = soln.y(17,:);
    h1 = soln.y(18,:);
    h2 = soln.y(36,:);

    % I_CaF
    m_a_CaF = [0.092 0 0 42 1 1 -2.8];
    m_b_CaF = [0.423 0.009 0 47 1 -1 1.7];
    h_a_CaF = [0.0027 0 0 51.5 1 1 2.7];
    h_b_CaF = [0.0165 0 0 49 1 1 -3.5]; 

    m_aa_CaF = (m_a_CaF(1) + m_a_CaF(2) .* V1 + m_a_CaF(3) ...
        .* exp((m_a_CaF(4) + V1)./m_a_CaF(5))) ./ (m_a_CaF(6) ...
        + exp((m_a_CaF(4) + V1) ./ m_a_CaF(7)));
    m_bb_CaF = (m_b_CaF(1) + m_b_CaF(2) .* V1 + m_b_CaF(3) ...
        .* exp((m_b_CaF(4) + V1)./m_b_CaF(5))) ./ (m_b_CaF(6) ...
        + exp((m_b_CaF(4) + V1) ./ m_b_CaF(7)));
    h_aa_CaF = (h_a_CaF(1) + h_a_CaF(2) .* V1 + h_a_CaF(3) ...
        .* exp((h_a_CaF(4) + V1)./h_a_CaF(5))) ./ (h_a_CaF(6) ...
        + exp((h_a_CaF(4) + V1) ./ h_a_CaF(7)));
    h_bb_CaF = (h_b_CaF(1) + h_b_CaF(2) .* V1 + h_b_CaF(3) ...
        .* exp((h_b_CaF(4) + V1)./h_b_CaF(5))) ./ (h_b_CaF(6) ...
        + exp((h_b_CaF(4) + V1) ./ h_b_CaF(7)));
    m_inf_CaF = m_aa_CaF./(m_aa_CaF + m_bb_CaF);
    tau_m_CaF = 1./(m_aa_CaF + m_bb_CaF);
    h_inf_CaF = h_aa_CaF./(h_aa_CaF + h_bb_CaF);
    tau_h_CaF = 1./(h_aa_CaF + h_bb_CaF);

    % I_CaS
    m_a_CaS = [0.0072 0 0 52 1 1 -3.5];
    m_b_CaS = [0.19 0 0 57 1 1 2.75];
    h_a_CaS = [0.00475 0 0 56 1 1 2.4];  
    h_b_CaS = [0.00215 0.00003 0.0002 45.5 2.17 1 2.15]; 

    m_aa_CaS = (m_a_CaS(1) + m_a_CaS(2) .* V1 + m_a_CaS(3) ...
        .* exp((m_a_CaS(4) + V1)./m_a_CaS(5))) ./ (m_a_CaS(6) ...
        + exp((m_a_CaS(4) + V1) ./ m_a_CaS(7)));
    m_bb_CaS = (m_b_CaS(1) + m_b_CaS(2) .* V1 + m_b_CaS(3) ...
        .* exp((m_b_CaS(4) + V1)./m_b_CaS(5))) ./ (m_b_CaS(6) ...
        + exp((m_b_CaS(4) + V1) ./ m_b_CaS(7)));
    h_aa_CaS = (h_a_CaS(1) + h_a_CaS(2) .* V1 + h_a_CaS(3) ...
        .* exp((h_a_CaS(4) + V1)./h_a_CaS(5))) ./ (h_a_CaS(6) ...
        + exp((h_a_CaS(4) + V1) ./ h_a_CaS(7)));
    h_bb_CaS = (h_b_CaS(1) + h_b_CaS(2) .* V1 + h_b_CaS(3) ...
        .* exp((h_b_CaS(4) + V1)./h_b_CaS(5))) ./ (h_b_CaS(6) ...
        + exp((h_b_CaS(4) + V1) ./ h_b_CaS(7)));
    m_inf_CaS = m_aa_CaS./(m_aa_CaS + m_bb_CaS);
    tau_m_CaS = 1./(m_aa_CaS + m_bb_CaS);
    h_inf_CaS = h_aa_CaS./(h_aa_CaS + h_bb_CaS);
    tau_h_CaS = 1./(h_aa_CaS + h_bb_CaS);

    % I_P
    m_a_P = [0.1 0 0 40 1 1 -5];
    m_b_P = [0.1 0 0 40 1 1 5];

    m_aa_P = (m_a_P(1) + m_a_P(2) .* V1 + m_a_P(3) ...
        .* exp((m_a_P(4) + V1)./m_a_P(5))) ./ (m_a_P(6) ...
        + exp((m_a_P(4) + V1) ./ m_a_P(7)));
    m_bb_P = (m_b_P(1) + m_b_P(2) .* V1 + m_b_P(3) ...
        .* exp((m_b_P(4) + V1)./m_b_P(5))) ./ (m_b_P(6) ...
        + exp((m_b_P(4) + V1) ./ m_b_P(7)));
    m_inf_P = m_aa_P./(m_aa_P + m_bb_P);
    tau_m_P = 1./(m_aa_P + m_bb_P);

    % I_Na
    m_a_Na = [-47.25 -3.5 0 13.5 1 -1 -5];
    m_b_Na = [7 0 0 11.5 1 1 6];
    h_a_Na = [0.1 0 0 27.5 1 1 2];
    h_b_Na = [0.255 0 0 12.5 1 1 -5];

    m_aa_Na = (m_a_Na(1) + m_a_Na(2) .* V1 + m_a_Na(3) ...
        .* exp((m_a_Na(4) + V1)./m_a_Na(5))) ./ (m_a_Na(6) ...
        + exp((m_a_Na(4) + V1) ./ m_a_Na(7)));
    m_bb_Na = (m_b_Na(1) + m_b_Na(2) .* V1 + m_b_Na(3) ...
        .* exp((m_b_Na(4) + V1)./m_b_Na(5))) ./ (m_b_Na(6) ...
        + exp((m_b_Na(4) + V1) ./ m_b_Na(7)));
    h_aa_Na = (h_a_Na(1) + h_a_Na(2) .* V1 + h_a_Na(3) ...
        .* exp((h_a_Na(4) + V1)./h_a_Na(5))) ./ (h_a_Na(6) ...
        + exp((h_a_Na(4) + V1) ./ h_a_Na(7)));
    h_bb_Na = (h_b_Na(1) + h_b_Na(2) .* V1 + h_b_Na(3) ...
        .* exp((h_b_Na(4) + V1)./h_b_Na(5))) ./ (h_b_Na(6) ...
        + exp((h_b_Na(4) + V1) ./ h_b_Na(7)));
    m_inf_Na = m_aa_Na./(m_aa_Na + m_bb_Na);
    tau_m_Na = 1./(m_aa_Na + m_bb_Na);
    h_inf_Na = h_aa_Na./(h_aa_Na + h_bb_Na);
    tau_h_Na = 1./(h_aa_Na + h_bb_Na);

    % I_K1
    m_a_K1 = [1 0 0 -10 1 1 -7.7];
    m_b_K1 = [1 0 0 72 1 8.5 28.6];
    h_a_K1 = [0.002 0 0 19 1 1 9.1];
    h_b_K1 = [0.00144 0 0 24 1 1 -5];  

    m_aa_K1 = (m_a_K1(1) + m_a_K1(2) .* V1 + m_a_K1(3) ...
        .* exp((m_a_K1(4) + V1)./m_a_K1(5))) ./ (m_a_K1(6) ...
        + exp((m_a_K1(4) + V1) ./ m_a_K1(7)));
    m_bb_K1 = (m_b_K1(1) + m_b_K1(2) .* V1 + m_b_K1(3) ...
        .* exp((m_b_K1(4) + V1)./m_b_K1(5))) ./ (m_b_K1(6) ...
        + exp((m_b_K1(4) + V1) ./ m_b_K1(7)));
    h_aa_K1 = (h_a_K1(1) + h_a_K1(2) .* V1 + h_a_K1(3) ...
        .* exp((h_a_K1(4) + V1)./h_a_K1(5))) ./ (h_a_K1(6) ...
        + exp((h_a_K1(4) + V1) ./ h_a_K1(7)));
    h_bb_K1 = (h_b_K1(1) + h_b_K1(2) .* V1 + h_b_K1(3) ...
        .* exp((h_b_K1(4) + V1)./h_b_K1(5))) ./ (h_b_K1(6) ...
        + exp((h_b_K1(4) + V1) ./ h_b_K1(7)));
    m_inf_K1 = m_aa_K1./(m_aa_K1 + m_bb_K1);
    tau_m_K1 = 1./(m_aa_K1 + m_bb_K1);
    h_inf_K1 = h_aa_K1./(h_aa_K1 + h_bb_K1);
    tau_h_K1 = 1./(h_aa_K1 + h_bb_K1);

    % I_K2
    m_a_K2 = [0.2 0 0 2 1 20 -5.9];
    m_b_K2 = [0.2 0 0 15 1 20 6.7];     

    m_aa_K2 = (m_a_K2(1) + m_a_K2(2) .* V1 + m_a_K2(3) ...
        .* exp((m_a_K2(4) + V1)./m_a_K2(5))) ./ (m_a_K2(6) ...
        + exp((m_a_K2(4) + V1) ./ m_a_K2(7)));
    m_bb_K2 = (m_b_K2(1) + m_b_K2(2) .* V1 + m_b_K2(3) ...
        .* exp((m_b_K2(4) + V1)./m_b_K2(5))) ./ (m_b_K2(6) ...
        + exp((m_b_K2(4) + V1) ./ m_b_K2(7)));
    m_inf_K2 = m_aa_K2./(m_aa_K2 + m_bb_K2);
    tau_m_K2 = 1./(m_aa_K2 + m_bb_K2);

    % I_A
    m_a_A = [0.335 0 0 32.5 1 0.86 -7.7];
    m_b_A = [2.48 0 0 50 1 7.5 8.3];
    h_a_A = [0.03 0 0 50 1 1 4.2];
    h_b_A = [0.029 0 0 56 1 1 -5];    

    m_aa_A = (m_a_A(1) + m_a_A(2) .* V1 + m_a_A(3) ...
        .* exp((m_a_A(4) + V1)./m_a_A(5))) ./ (m_a_A(6) ...
        + exp((m_a_A(4) + V1) ./ m_a_A(7)));
    m_bb_A = (m_b_A(1) + m_b_A(2) .* V1 + m_b_A(3) ...
        .* exp((m_b_A(4) + V1)./m_b_A(5))) ./ (m_b_A(6) ...
        + exp((m_b_A(4) + V1) ./ m_b_A(7)));
    h_aa_A = (h_a_A(1) + h_a_A(2) .* V1 + h_a_A(3) ...
        .* exp((h_a_A(4) + V1)./h_a_A(5))) ./ (h_a_A(6) ...
        + exp((h_a_A(4) + V1) ./ h_a_A(7)));
    h_bb_A = (h_b_A(1) + h_b_A(2) .* V1 + h_b_A(3) ...
        .* exp((h_b_A(4) + V1)./h_b_A(5))) ./ (h_b_A(6) ...
        + exp((h_b_A(4) + V1) ./ h_b_A(7)));
    m_inf_A = m_aa_A./(m_aa_A + m_bb_A);
    tau_m_A = 1./(m_aa_A + m_bb_A);
    h_inf_A = h_aa_A./(h_aa_A + h_bb_A);
    tau_h_A = 1./(h_aa_A + h_bb_A);

    % I_h
    m_a_h = [-0.00082 -0.00002 0 44.6 1 0.94 0.75];
    m_b_h = [0.00042 0 0 52.8 1 1 -5.22];     

    m_aa_h = (m_a_h(1) + m_a_h(2) .* V1 + m_a_h(3) ...
        .* exp((m_a_h(4) + V1)./m_a_h(5))) ./ (m_a_h(6) ...
        + exp((m_a_h(4) + V1) ./ m_a_h(7)));
    m_bb_h = (m_b_h(1) + m_b_h(2) .* V1 + m_b_h(3) ...
        .* exp((m_b_h(4) + V1)./m_b_h(5))) ./ (m_b_h(6) ...
        + exp((m_b_h(4) + V1) ./ m_b_h(7)));
    m_inf_h = m_aa_h./(m_aa_h + m_bb_h);
    tau_m_h = 1./(m_aa_h + m_bb_h);    
    
    mht = [m_inf_CaF; tau_m_CaF; h_inf_CaF; tau_h_CaF; m_inf_CaS; ...
        tau_m_CaS; h_inf_CaS; tau_h_CaS; m_inf_P; tau_m_P; m_inf_Na; ...
        tau_m_Na; h_inf_Na; tau_h_Na; m_inf_K1; tau_m_K1; h_inf_K1; ...
        tau_h_K1; m_inf_K2; tau_m_K2; m_inf_A; tau_m_A; h_inf_A; ...
        tau_h_A; m_inf_h; tau_m_h];
        
%     % I_Na
%     m_a_Na = [-47.25 -3.5 0 13.5 1 -1 -5];
%     m_b_Na = [7 0 0 11.5 1 1 6];
%     m_aa_Na = (m_a_Na(1) + m_a_Na(2) .* V1 + m_a_Na(3) ...
%         * exp((m_a_Na(4) + V1)/m_a_Na(5))) ./ (m_a_Na(6) ...
%         + exp((m_a_Na(4) + V1) ./ m_a_Na(7)));
%     m_bb_Na = (m_b_Na(1) + m_b_Na(2) .* V1 + m_b_Na(3) ...
%         * exp((m_b_Na(4) + V1)/m_b_Na(5))) ./ (m_b_Na(6) ...
%         + exp((m_b_Na(4) + V1) ./ m_b_Na(7)));
%     minf_Na = m_aa_Na./(m_aa_Na+m_bb_Na);    
%     
%     m_a_CaF = [0.092 0 0 42 1 1 -2.8];
%     m_b_CaF = [0.423 0.009 0 47 1 -1 1.7];
%     m_aa_CaF = (m_a_CaF(1) + m_a_CaF(2) .* V1 + m_a_CaF(3) ...
%         .* exp((m_a_CaF(4) + V1)./m_a_CaF(5))) ./ (m_a_CaF(6) ...
%         + exp((m_a_CaF(4) + V1) ./ m_a_CaF(7)));
%     m_bb_CaF = (m_b_CaF(1) + m_b_CaF(2) .* V1 + m_b_CaF(3) ...
%         .* exp((m_b_CaF(4) + V1)./m_b_CaF(5))) ./ (m_b_CaF(6) ...
%         + exp((m_b_CaF(4) + V1) ./ m_b_CaF(7)));
%     minf_CaF = m_aa_CaF./(m_aa_CaF+m_bb_CaF);   
%     
%     
%     
%     figure;
%     plot(V1,minf_Na);
%     xlabel('Voltage (mV)');
%     title('Na m_{inf}');
%         
%     figure;
%     plot(V1,minf_CaF);
%     xlabel('Voltage (mV)');
%     title('P m_{inf}');
%     
%     figure;
%     plot(t,V1);
%     xlabel('Time (ms)');
%     ylabel('Voltage (mV)');
%     title('Membrane potential 1');
end