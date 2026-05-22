% File:    SynapticCurrent.m
% Purpose: Determine expected values for Synaptic Module to verify Verilog
%          module per for a given set of parameters
% Authors: Aster Zawaideh & CK Gallegos Rodriguez
% Date:    March 2026
% Instructions for usage:

tspan = single(0.01); %duration to simulate in seconds
dt = single(0.001);      % time step for forward euler method %0x3a83126f
loop  = ceil(tspan/dt);   % no. of iterations of euler
  
% constants
t0= 0;
tau_rise = single(2.5);%0x40200000
tau_decay = single(11); %0x41300000
g_syn_bar = single(200e-9);%0x3456bf95
E_syn = single(0.045);  % using values for sodium  % 0x3d3851ec

%these are constants, can hard-code values from previous parameters
t_peak = single(t0 + ((tau_decay*tau_rise)/(tau_decay*tau_rise))*log(tau_decay/tau_rise)); %0x3fbda512
f = single(1/(-exp((-(t_peak-t0)/tau_rise)+exp(-(t_peak-t0)/tau_decay)))); %0xbf413a93

% initial values, start these at zero?!
h_0 = single(0.035); %0x3d0f5c29
g_0 = single(0); %0x00000000


% Initializing variable vectors
t = (1:loop)*dt;
h = zeros(loop,1, 'single');
g = zeros(loop,1, 'single');
I_syn = zeros(loop,1, 'single');
g_syn = zeros(loop,1, 'single');

% need to initialize Action Potential vector
AP = zeros(loop,1, 'single'); % make it fire sometimes
                    % initialize this vector to something 
Vmem = zeros(loop, 1, 'single');% same with this one, populate with whatever you
                       % are feeding into the testbench

g = zeros(loop,1, 'single');
dg = zeros(loop,1, 'single');
dh = zeros(loop,1, 'single');


h(1) = single(h_0);
g(1) = single(g_0);
dg(1) = single(-g_0/tau_decay + h_0);
dh(1) = single(-h_0/tau_rise + h_0*AP(1));


%if you run sim can output Vmem from each neuron, 
%Vm for pre and post synaptic neuron
% Vmem from presynaptic neuron is compared to Vthreshold to get input to
% synaptic module
%populate AP vector
for i = 1:loop
   AP(i)= mod(i,2);
   Vmem(i) = -62.5; %TODO %0xc27a0000
end

%TODO: populate Vmem or at least its initial value
% prefeed Vmem1 (post) and Vmem2 (pre) vectors, extract these values from
% hhrun.m 

% Values for 3 different time step? - Bryce

%TODO: calculate for 4 synapses
for i = 2:loop
    % Update h
    delta_h = -h(i-1)/tau_rise + h_0*AP(i-1);
    new_h = h(i-1) + delta_h;
    
    dh(i) = single(delta_h);
    h(i) = single(new_h);

    % Update g
    delta_g = -g(i-1)/tau_decay + h(i);
    new_g = g(i-1) + delta_g;

    dg(i) = single(delta_g);
    g(i) = single(new_g);

    % Update g_syn
    g_syn(i) = single(g_syn_bar * f * g(i));

    % Calculate I syn
    I_syn(i) = single(g_syn(i) * (Vmem(i) - E_syn)); %Vmem is from post-synaptic neuron

    % TODO: calculate Vmem and compare with Vthresh to set AP
    

end

% write expected values to excel spreadsheet
time = t.';
ParametersT = table(dt,E_syn,f,g_syn_bar, g_0,h_0,t_peak,tau_decay,tau_rise,tspan,t0);
DataT= table(time, AP, dh, h, dg, g,g_syn, I_syn, Vmem);
filename = 'expectedSynapticModuleData.xlsx';
writetable(ParametersT,filename,'Sheet',1);
writetable(DataT,filename,'Sheet',2);