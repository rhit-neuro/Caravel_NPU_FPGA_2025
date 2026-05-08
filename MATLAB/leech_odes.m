function [dydt] = leech_odes(t,y)
    % define variables        
    Cm = 500;
    C = 10e5;
    h0 = 0.035;
    t0 = 0;
    tau_rise = 2.5;    
    tau_decay = 11;
    V_threshold = -10;

    % set initial conditions
    V1 = y(1);
    m_CaF1 = y(2);
    h_CaF1 = y(3);
    m_CaS1 = y(4);
    h_CaS1 = y(5);
    m_P1 = y(6);
    m_Na1 = y(7);
    h_Na1 = y(8);
    m_K11 = y(9);
    h_K11 = y(10);
    m_K21 = y(11);
    m_A1 = y(12);
    h_A1 = y(13);
    m_h1 = y(14);
    A1 = y(15);
    P1 = y(16);
    g1 = y(17);
    h1 = y(18);
    V2 = y(19);
    m_CaF2 = y(20);
    h_CaF2 = y(21);
    m_CaS2 = y(22);
    h_CaS2 = y(23);
    m_P2 = y(24);
    m_Na2 = y(25);
    h_Na2 = y(26);
    m_K12 = y(27);
    h_K12 = y(28);
    m_K22 = y(29);
    m_A2 = y(30);
    h_A2 = y(31);
    m_h2 = y(32);
    A2 = y(33);
    P2 = y(34);
    g2 = y(35);
    h2 = y(36);
    
    % I_CaF
    gbar_CaF = 16;
    Eion_CaF = 135.2;
    m_a_CaF = [0.092 0 0 42 1 1 -2.8];
    m_b_CaF = [0.423 0.009 0 47 1 -1 1.7];
    h_a_CaF = [0.0027 0 0 51.5 1 1 2.7];
    h_b_CaF = [0.0165 0 0 49 1 1 -3.5]; 
    
    m_aa_CaF1 = (m_a_CaF(1) + m_a_CaF(2) * V1 + m_a_CaF(3) ...
        * exp((m_a_CaF(4) + V1)/m_a_CaF(5))) / (m_a_CaF(6) ...
        + exp((m_a_CaF(4) + V1) / m_a_CaF(7)));
    m_bb_CaF1 = (m_b_CaF(1) + m_b_CaF(2) * V1 + m_b_CaF(3) ...
        * exp((m_b_CaF(4) + V1)/m_b_CaF(5))) / (m_b_CaF(6) ...
        + exp((m_b_CaF(4) + V1) / m_b_CaF(7)));
    h_aa_CaF1 = (h_a_CaF(1) + h_a_CaF(2) * V1 + h_a_CaF(3) ...
        * exp((h_a_CaF(4) + V1)/h_a_CaF(5))) / (h_a_CaF(6) ...
        + exp((h_a_CaF(4) + V1) / h_a_CaF(7)));
    h_bb_CaF1 = (h_b_CaF(1) + h_b_CaF(2) * V1 + h_b_CaF(3) ...
        * exp((h_b_CaF(4) + V1)/h_b_CaF(5))) / (h_b_CaF(6) ...
        + exp((h_b_CaF(4) + V1) / h_b_CaF(7)));
    dm_CaF1 = m_aa_CaF1 * (1 - m_CaF1) - m_bb_CaF1 * m_CaF1;
    dh_CaF1 = h_aa_CaF1 * (1 - h_CaF1) - h_bb_CaF1 * h_CaF1;
    g_CaF1 = gbar_CaF * m_CaF1 ^ 2 * h_CaF1;
    Iion_CaF1 = g_CaF1 * (V1 - Eion_CaF);
    
    m_aa_CaF2 = (m_a_CaF(1) + m_a_CaF(2) * V2 + m_a_CaF(3) ...
        * exp((m_a_CaF(4) + V2)/m_a_CaF(5))) / (m_a_CaF(6) ...
        + exp((m_a_CaF(4) + V2) / m_a_CaF(7)));
    m_bb_CaF2 = (m_b_CaF(1) + m_b_CaF(2) * V2 + m_b_CaF(3) ...
        * exp((m_b_CaF(4) + V2)/m_b_CaF(5))) / (m_b_CaF(6) ...
        + exp((m_b_CaF(4) + V2) / m_b_CaF(7)));
    h_aa_CaF2 = (h_a_CaF(1) + h_a_CaF(2) * V2 + h_a_CaF(3) ...
        * exp((h_a_CaF(4) + V2)/h_a_CaF(5))) / (h_a_CaF(6) ...
        + exp((h_a_CaF(4) + V2) / h_a_CaF(7)));
    h_bb_CaF2 = (h_b_CaF(1) + h_b_CaF(2) * V2 + h_b_CaF(3) ...
        * exp((h_b_CaF(4) + V2)/h_b_CaF(5))) / (h_b_CaF(6) ...
        + exp((h_b_CaF(4) + V2) / h_b_CaF(7)));
    dm_CaF2 = m_aa_CaF2 * (1 - m_CaF2) - m_bb_CaF2 * m_CaF2;
    dh_CaF2 = h_aa_CaF2 * (1 - h_CaF2) - h_bb_CaF2 * h_CaF2;
    g_CaF2 = gbar_CaF * m_CaF2 ^ 2 * h_CaF2;
    Iion_CaF2 = g_CaF2 * (V2 - Eion_CaF);
    
    % I_CaS
    gbar_CaS = 5;
    Eion_CaS = 135.2;
    m_a_CaS = [0.0072 0 0 52 1 1 -3.5];
    m_b_CaS = [0.19 0 0 57 1 1 2.75];
    h_a_CaS = [0.00475 0 0 56 1 1 2.4];  
    h_b_CaS = [0.00215 0.00003 0.0002 45.5 2.17 1 2.15]; 
    
    m_aa_CaS1 = (m_a_CaS(1) + m_a_CaS(2) * V1 + m_a_CaS(3) ...
        * exp((m_a_CaS(4) + V1)/m_a_CaS(5))) / (m_a_CaS(6) ...
        + exp((m_a_CaS(4) + V1) / m_a_CaS(7)));
    m_bb_CaS1 = (m_b_CaS(1) + m_b_CaS(2) * V1 + m_b_CaS(3) ...
        * exp((m_b_CaS(4) + V1)/m_b_CaS(5))) / (m_b_CaS(6) ...
        + exp((m_b_CaS(4) + V1) / m_b_CaS(7)));
    h_aa_CaS1 = (h_a_CaS(1) + h_a_CaS(2) * V1 + h_a_CaS(3) ...
        * exp((h_a_CaS(4) + V1)/h_a_CaS(5))) / (h_a_CaS(6) ...
        + exp((h_a_CaS(4) + V1) / h_a_CaS(7)));
    h_bb_CaS1 = (h_b_CaS(1) + h_b_CaS(2) * V1 + h_b_CaS(3) ...
        * exp((h_b_CaS(4) + V1)/h_b_CaS(5))) / (h_b_CaS(6) ...
        + exp((h_b_CaS(4) + V1) / h_b_CaS(7)));    
    dm_CaS1 = m_aa_CaS1 * (1 - m_CaS1) - m_bb_CaS1 * m_CaS1;
    dh_CaS1 = h_aa_CaS1 * (1 - h_CaS1) - h_bb_CaS1 * h_CaS1;
    g_CaS1 = gbar_CaS * m_CaS1 ^ 2 * h_CaS1;
    Iion_CaS1 = g_CaS1 * (V1 - Eion_CaS);
    
    m_aa_CaS2 = (m_a_CaS(1) + m_a_CaS(2) * V2 + m_a_CaS(3) ...
        * exp((m_a_CaS(4) + V2)/m_a_CaS(5))) / (m_a_CaS(6) ...
        + exp((m_a_CaS(4) + V2) / m_a_CaS(7)));
    m_bb_CaS2 = (m_b_CaS(1) + m_b_CaS(2) * V2 + m_b_CaS(3) ...
        * exp((m_b_CaS(4) + V2)/m_b_CaS(5))) / (m_b_CaS(6) ...
        + exp((m_b_CaS(4) + V2) / m_b_CaS(7)));
    h_aa_CaS2 = (h_a_CaS(1) + h_a_CaS(2) * V2 + h_a_CaS(3) ...
        * exp((h_a_CaS(4) + V2)/h_a_CaS(5))) / (h_a_CaS(6) ...
        + exp((h_a_CaS(4) + V2) / h_a_CaS(7)));
    h_bb_CaS2 = (h_b_CaS(1) + h_b_CaS(2) * V2 + h_b_CaS(3) ...
        * exp((h_b_CaS(4) + V2)/h_b_CaS(5))) / (h_b_CaS(6) ...
        + exp((h_b_CaS(4) + V2) / h_b_CaS(7)));    
    dm_CaS2 = m_aa_CaS2 * (1 - m_CaS2) - m_bb_CaS2 * m_CaS2;
    dh_CaS2 = h_aa_CaS2 * (1 - h_CaS2) - h_bb_CaS2 * h_CaS2;
    g_CaS2 = gbar_CaS * m_CaS2 ^ 2 * h_CaS2;
    Iion_CaS2 = g_CaS2 * (V2 - Eion_CaS);
    
    % I_P
    gbar_P = 3;
    Eion_P = 45;
    m_a_P = [0.1 0 0 40 1 1 -5];
    m_b_P = [0.1 0 0 40 1 1 5];
    
    m_aa_P1 = (m_a_P(1) + m_a_P(2) * V1 + m_a_P(3) ...
        * exp((m_a_P(4) + V1)/m_a_P(5))) / (m_a_P(6) ...
        + exp((m_a_P(4) + V1) / m_a_P(7)));
    m_bb_P1 = (m_b_P(1) + m_b_P(2) * V1 + m_b_P(3) ...
        * exp((m_b_P(4) + V1)/m_b_P(5))) / (m_b_P(6) ...
        + exp((m_b_P(4) + V1) / m_b_P(7)));
    dm_P1 = m_aa_P1 * (1 - m_P1) - m_bb_P1 * m_P1;
    g_P1 = gbar_P * m_P1;
    Iion_P1 = g_P1 * (V1 - Eion_P);
    
    m_aa_P2 = (m_a_P(1) + m_a_P(2) * V2 + m_a_P(3) ...
        * exp((m_a_P(4) + V2)/m_a_P(5))) / (m_a_P(6) ...
        + exp((m_a_P(4) + V2) / m_a_P(7)));
    m_bb_P2 = (m_b_P(1) + m_b_P(2) * V2 + m_b_P(3) ...
        * exp((m_b_P(4) + V2)/m_b_P(5))) / (m_b_P(6) ...
        + exp((m_b_P(4) + V2) / m_b_P(7)));
    dm_P2 = m_aa_P2 * (1 - m_P2) - m_bb_P2 * m_P2;
    g_P2 = gbar_P * m_P2;
    Iion_P2 = g_P2 * (V2 - Eion_P);
    
    % I_Na
    gbar_Na = 350;
    Eion_Na = 45;
    m_a_Na = [-47.25 -3.5 0 13.5 1 -1 -5];
    m_b_Na = [7 0 0 11.5 1 1 6];
    h_a_Na = [0.1 0 0 27.5 1 1 2];
    h_b_Na = [0.255 0 0 12.5 1 1 -5];
    
    m_aa_Na1 = (m_a_Na(1) + m_a_Na(2) * V1 + m_a_Na(3) ...
        * exp((m_a_Na(4) + V1)/m_a_Na(5))) / (m_a_Na(6) ...
        + exp((m_a_Na(4) + V1) / m_a_Na(7)));
    m_bb_Na1 = (m_b_Na(1) + m_b_Na(2) * V1 + m_b_Na(3) ...
        * exp((m_b_Na(4) + V1)/m_b_Na(5))) / (m_b_Na(6) ...
        + exp((m_b_Na(4) + V1) / m_b_Na(7)));
    h_aa_Na1 = (h_a_Na(1) + h_a_Na(2) * V1 + h_a_Na(3) ...
        * exp((h_a_Na(4) + V1)/h_a_Na(5))) / (h_a_Na(6) ...
        + exp((h_a_Na(4) + V1) / h_a_Na(7)));
    h_bb_Na1 = (h_b_Na(1) + h_b_Na(2) * V1 + h_b_Na(3) ...
        * exp((h_b_Na(4) + V1)/h_b_Na(5))) / (h_b_Na(6) ...
        + exp((h_b_Na(4) + V1) / h_b_Na(7)));        
    dm_Na1 = m_aa_Na1 * (1 - m_Na1) - m_bb_Na1 * m_Na1;
    dh_Na1 = h_aa_Na1 * (1 - h_Na1) - h_bb_Na1 * h_Na1;
    g_Na1 = gbar_Na * m_Na1 ^ 3 * h_Na1;
    Iion_Na1 = g_Na1 * (V1 - Eion_Na);
    
    m_aa_Na2 = (m_a_Na(1) + m_a_Na(2) * V2 + m_a_Na(3) ...
        * exp((m_a_Na(4) + V2)/m_a_Na(5))) / (m_a_Na(6) ...
        + exp((m_a_Na(4) + V2) / m_a_Na(7)));
    m_bb_Na2 = (m_b_Na(1) + m_b_Na(2) * V2 + m_b_Na(3) ...
        * exp((m_b_Na(4) + V2)/m_b_Na(5))) / (m_b_Na(6) ...
        + exp((m_b_Na(4) + V2) / m_b_Na(7)));
    h_aa_Na2 = (h_a_Na(1) + h_a_Na(2) * V2 + h_a_Na(3) ...
        * exp((h_a_Na(4) + V2)/h_a_Na(5))) / (h_a_Na(6) ...
        + exp((h_a_Na(4) + V2) / h_a_Na(7)));
    h_bb_Na2 = (h_b_Na(1) + h_b_Na(2) * V2 + h_b_Na(3) ...
        * exp((h_b_Na(4) + V2)/h_b_Na(5))) / (h_b_Na(6) ...
        + exp((h_b_Na(4) + V2) / h_b_Na(7)));        
    dm_Na2 = m_aa_Na2 * (1 - m_Na2) - m_bb_Na2 * m_Na2;
    dh_Na2 = h_aa_Na2 * (1 - h_Na2) - h_bb_Na2 * h_Na2;
    g_Na2 = gbar_Na * m_Na2 ^ 3 * h_Na2;
    Iion_Na2 = g_Na2 * (V2 - Eion_Na);
    
    % I_K1
    gbar_K1 = 100;
    Eion_K1 = -80;
    m_a_K1 = [1 0 0 -10 1 1 -7.7];
    m_b_K1 = [1 0 0 72 1 8.5 28.6];
    h_a_K1 = [0.002 0 0 19 1 1 9.1];
    h_b_K1 = [0.00144 0 0 24 1 1 -5];  
    
    m_aa_K11 = (m_a_K1(1) + m_a_K1(2) * V1 + m_a_K1(3) ...
        * exp((m_a_K1(4) + V1)/m_a_K1(5))) / (m_a_K1(6) ...
        + exp((m_a_K1(4) + V1) / m_a_K1(7)));
    m_bb_K11 = (m_b_K1(1) + m_b_K1(2) * V1 + m_b_K1(3) ...
        * exp((m_b_K1(4) + V1)/m_b_K1(5))) / (m_b_K1(6) ...
        + exp((m_b_K1(4) + V1) / m_b_K1(7)));
    h_aa_K11 = (h_a_K1(1) + h_a_K1(2) * V1 + h_a_K1(3) ...
        * exp((h_a_K1(4) + V1)/h_a_K1(5))) / (h_a_K1(6) ...
        + exp((h_a_K1(4) + V1) / h_a_K1(7)));
    h_bb_K11 = (h_b_K1(1) + h_b_K1(2) * V1 + h_b_K1(3) ...
        * exp((h_b_K1(4) + V1)/h_b_K1(5))) / (h_b_K1(6) ...
        + exp((h_b_K1(4) + V1) / h_b_K1(7)));             
    dm_K11 = m_aa_K11 * (1 - m_K11) - m_bb_K11 * m_K11;
    dh_K11 = h_aa_K11 * (1 - h_K11) - h_bb_K11 * h_K11;
    g_K11 = gbar_K1 * m_K11 ^ 2 * h_K11;
    Iion_K11 = g_K11 * (V1 - Eion_K1);
    
    m_aa_K12 = (m_a_K1(1) + m_a_K1(2) * V2 + m_a_K1(3) ...
        * exp((m_a_K1(4) + V2)/m_a_K1(5))) / (m_a_K1(6) ...
        + exp((m_a_K1(4) + V2) / m_a_K1(7)));
    m_bb_K12 = (m_b_K1(1) + m_b_K1(2) * V2 + m_b_K1(3) ...
        * exp((m_b_K1(4) + V2)/m_b_K1(5))) / (m_b_K1(6) ...
        + exp((m_b_K1(4) + V2) / m_b_K1(7)));
    h_aa_K12 = (h_a_K1(1) + h_a_K1(2) * V2 + h_a_K1(3) ...
        * exp((h_a_K1(4) + V2)/h_a_K1(5))) / (h_a_K1(6) ...
        + exp((h_a_K1(4) + V2) / h_a_K1(7)));
    h_bb_K12 = (h_b_K1(1) + h_b_K1(2) * V2 + h_b_K1(3) ...
        * exp((h_b_K1(4) + V2)/h_b_K1(5))) / (h_b_K1(6) ...
        + exp((h_b_K1(4) + V2) / h_b_K1(7)));             
    dm_K12 = m_aa_K12 * (1 - m_K12) - m_bb_K12 * m_K12;
    dh_K12 = h_aa_K12 * (1 - h_K12) - h_bb_K12 * h_K12;
    g_K12 = gbar_K1 * m_K12 ^ 2 * h_K12;
    Iion_K12 = g_K12 * (V2 - Eion_K1);
    
    % I_K2
    gbar_K2 = 50;
    Eion_K2 = -80;
    m_a_K2 = [0.2 0 0 2 1 20 -5.9];
    m_b_K2 = [0.2 0 0 15 1 20 6.7];    
    
    m_aa_K21 = (m_a_K2(1) + m_a_K2(2) * V1 + m_a_K2(3) ...
        * exp((m_a_K2(4) + V1)/m_a_K2(5))) / (m_a_K2(6) ...
        + exp((m_a_K2(4) + V1) / m_a_K2(7)));
    m_bb_K21 = (m_b_K2(1) + m_b_K2(2) * V1 + m_b_K2(3) ...
        * exp((m_b_K2(4) + V1)/m_b_K2(5))) / (m_b_K2(6) ...
        + exp((m_b_K2(4) + V1) / m_b_K2(7)));
    dm_K21 = m_aa_K21 * (1 - m_K21) - m_bb_K21 * m_K21;
    g_K21 = gbar_K2 * m_K21 ^ 2;
    Iion_K21 = g_K21 * (V1 - Eion_K2);    
    
    m_aa_K22 = (m_a_K2(1) + m_a_K2(2) * V2 + m_a_K2(3) ...
        * exp((m_a_K2(4) + V2)/m_a_K2(5))) / (m_a_K2(6) ...
        + exp((m_a_K2(4) + V2) / m_a_K2(7)));
    m_bb_K22 = (m_b_K2(1) + m_b_K2(2) * V2 + m_b_K2(3) ...
        * exp((m_b_K2(4) + V2)/m_b_K2(5))) / (m_b_K2(6) ...
        + exp((m_b_K2(4) + V2) / m_b_K2(7)));
    dm_K22 = m_aa_K22 * (1 - m_K22) - m_bb_K22 * m_K22;
    g_K22 = gbar_K2 * m_K22 ^ 2;
    Iion_K22 = g_K22 * (V2 - Eion_K2);    
    
    % I_A
    gbar_A = 80;
    Eion_A = -80;
    m_a_A = [0.335 0 0 32.5 1 0.86 -7.7];
    m_b_A = [2.48 0 0 50 1 7.5 8.3];
    h_a_A = [0.03 0 0 50 1 1 4.2];
    h_b_A = [0.029 0 0 56 1 1 -5];    
    
    m_aa_A1 = (m_a_A(1) + m_a_A(2) * V1 + m_a_A(3) ...
        * exp((m_a_A(4) + V1)/m_a_A(5))) / (m_a_A(6) ...
        + exp((m_a_A(4) + V1) / m_a_A(7)));
    m_bb_A1 = (m_b_A(1) + m_b_A(2) * V1 + m_b_A(3) ...
        * exp((m_b_A(4) + V1)/m_b_A(5))) / (m_b_A(6) ...
        + exp((m_b_A(4) + V1) / m_b_A(7)));
    h_aa_A1 = (h_a_A(1) + h_a_A(2) * V1 + h_a_A(3) ...
        * exp((h_a_A(4) + V1)/h_a_A(5))) / (h_a_A(6) ...
        + exp((h_a_A(4) + V1) / h_a_A(7)));
    h_bb_A1 = (h_b_A(1) + h_b_A(2) * V1 + h_b_A(3) ...
        * exp((h_b_A(4) + V1)/h_b_A(5))) / (h_b_A(6) ...
        + exp((h_b_A(4) + V1) / h_b_A(7))); 
    dm_A1 = m_aa_A1 * (1 - m_A1) - m_bb_A1 * m_A1;
    dh_A1 = h_aa_A1 * (1 - h_A1) - h_bb_A1 * h_A1;
    g_A1 = gbar_A * m_A1 ^ 2 * h_A1;
    Iion_A1 = g_A1 * (V1 - Eion_A);
    
    m_aa_A2 = (m_a_A(1) + m_a_A(2) * V2 + m_a_A(3) ...
        * exp((m_a_A(4) + V2)/m_a_A(5))) / (m_a_A(6) ...
        + exp((m_a_A(4) + V2) / m_a_A(7)));
    m_bb_A2 = (m_b_A(1) + m_b_A(2) * V2 + m_b_A(3) ...
        * exp((m_b_A(4) + V2)/m_b_A(5))) / (m_b_A(6) ...
        + exp((m_b_A(4) + V2) / m_b_A(7)));
    h_aa_A2 = (h_a_A(1) + h_a_A(2) * V2 + h_a_A(3) ...
        * exp((h_a_A(4) + V2)/h_a_A(5))) / (h_a_A(6) ...
        + exp((h_a_A(4) + V2) / h_a_A(7)));
    h_bb_A2 = (h_b_A(1) + h_b_A(2) * V2 + h_b_A(3) ...
        * exp((h_b_A(4) + V2)/h_b_A(5))) / (h_b_A(6) ...
        + exp((h_b_A(4) + V2) / h_b_A(7))); 
    dm_A2 = m_aa_A2 * (1 - m_A2) - m_bb_A2 * m_A2;
    dh_A2 = h_aa_A2 * (1 - h_A2) - h_bb_A2 * h_A2;
    g_A2 = gbar_A * m_A2 ^ 2 * h_A2;
    Iion_A2 = g_A2 * (V2 - Eion_A);    
    
    % I_h
    gbar_h = 7;
    Eion_h = -21;
    m_a_h = [-0.00082 -0.00002 0 44.6 1 0.94 0.75];
    m_b_h = [0.00042 0 0 52.8 1 1 -5.22];      
    
    m_aa_h1 = (m_a_h(1) + m_a_h(2) * V1 + m_a_h(3) ...
        * exp((m_a_h(4) + V1)/m_a_h(5))) / (m_a_h(6) ...
        + exp((m_a_h(4) + V1) / m_a_h(7)));
    m_bb_h1 = (m_b_h(1) + m_b_h(2) * V1 + m_b_h(3) ...
        * exp((m_b_h(4) + V1)/m_b_h(5))) / (m_b_h(6) ...
        + exp((m_b_h(4) + V1) / m_b_h(7)));
    dm_h1 = m_aa_h1 * (1 - m_h1) - m_bb_h1 * m_h1;
    g_h1 = gbar_h * m_h1 ^ 2;
    Iion_h1 = g_h1 * (V1 - Eion_h);
    
    m_aa_h2 = (m_a_h(1) + m_a_h(2) * V2 + m_a_h(3) ...
        * exp((m_a_h(4) + V2)/m_a_h(5))) / (m_a_h(6) ...
        + exp((m_a_h(4) + V2) / m_a_h(7)));
    m_bb_h2 = (m_b_h(1) + m_b_h(2) * V2 + m_b_h(3) ...
        * exp((m_b_h(4) + V2)/m_b_h(5))) / (m_b_h(6) ...
        + exp((m_b_h(4) + V2) / m_b_h(7)));
    dm_h2 = m_aa_h2 * (1 - m_h2) - m_bb_h2 * m_h2;
    g_h2 = gbar_h * m_h2 ^ 2;
    Iion_h2 = g_h2 * (V2 - Eion_h);
    
    % I_leak
    gbar_leak = 10;
    Eion_leak = -52.5;
    Iion_leak1 = gbar_leak * (V1 - Eion_leak);
    Iion_leak2 = gbar_leak * (V2 - Eion_leak);

    % A and B
%     Ainf1 = 0.1 + 0.2/(1 + exp(-0.4*(V1 + 37)));
%     tau1 = 1000 / (1 + exp(0.3 * (V1 + 37)) + exp(-(V1 + 45)));
%     dA1 = 1/tau1 * (Ainf1 - A1);
%     B1 = 0.003 + 0.017/(1 + exp(0.21*(V1 + 43.6)));    
%     Ainf2 = 0.1 + 0.2/(1 + exp(-0.4*(V2 + 37)));
%     tau2 = 1000 / (1 + exp(0.3 * (V2 + 37)) + exp(-(V2 + 45)));
%     dA2 = 1/tau2 * (Ainf2 - A2);
%     B2 = 0.003 + 0.017/(1 + exp(0.21*(V2 + 43.6))); 
    
    % I_SynG
%     gbar_SynG = 300;
%     E_SynG = -62.5;
%     I_Ca1 = max(0, -Iion_CaF1 - Iion_CaS1 - A1);
%     dP1 = I_Ca1 - B1 * P1;
%     I_SynG1 = gbar_SynG * (P2 ^ 3 / (C + P2 ^ 3)) * (V1 - E_SynG);
%     I_Ca2 = max(0, -Iion_CaF2 - Iion_CaS2 - A2);
%     dP2 = I_Ca2 - B2 * P2;
%     I_SynG2 = gbar_SynG * (P1 ^ 3 / (C + P1 ^ 3)) * (V2 - E_SynG);
   
%syn model equations for state vars
    % g and h
    dir1 = 0*(V2<V_threshold)+h0*(V2>V_threshold); %dirac thresholding
    dir2 = 0*(V1<V_threshold)+h0*(V1>V_threshold);
    dg1 = -g1/tau_decay + h1;
    dh1 = -h1/tau_rise + dir1;
    dg2 = -g2/tau_decay + h2;
    dh2 = -h2/tau_rise + dir2;
    
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
    I_SynS1 = g_SynS1 * (V1 - E_SynS);
    I_SynS2 = g_SynS2 * (V2 - E_SynS);
    
    dA1 = 0;
    dP1 = 0;
    I_SynG1 = 0;
    dA2 = 0;
    dP2 = 0;
    I_SynG2 = 0;

%     dg1 = 0;
%     dh1 = 0;
%     I_SynS1 = 0;
%     dg2 = 0;
%     dh2 = 0;
%     I_SynS2 = 0;
    
    % main formula  
    dVm1 = -(1/Cm)*(Iion_CaF1 + Iion_CaS1 + Iion_P1 + Iion_Na1 + ...
        Iion_K11 + Iion_K21 + Iion_A1 + Iion_h1 + Iion_leak1 + ...
        I_SynG1 + I_SynS1);
    dVm2 = -(1/Cm)*(Iion_CaF2 + Iion_CaS2 + Iion_P2 + Iion_Na2 + ...
        Iion_K12 + Iion_K22 + Iion_A2 + Iion_h2 + Iion_leak2 + ...
        I_SynG2 + I_SynS2);
    
    % set output
    dydt = [dVm1; dm_CaF1; dh_CaF1; dm_CaS1; dh_CaS1; dm_P1; ...
        dm_Na1; dh_Na1; dm_K11; dh_K11; dm_K21; dm_A1; dh_A1; ...
        dm_h1; dA1; dP1; dg1; dh1; dVm2; dm_CaF2; dh_CaF2; dm_CaS2; dh_CaS2; ... 
        dm_P2; dm_Na2; dh_Na2; dm_K12; dh_K12; dm_K22; dm_A2; ...
        dh_A2; dm_h2; dA2; dP2; dg2; dh2];
end
