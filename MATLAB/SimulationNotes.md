# Guide to simulating Neurons

**SynapticCurrent.m** was our original attempt at calculating the expected values for the synaptic module. This script essentially performs the same equations as the synaptic module.

**leech_sim.m** was a script given to our team by Dr. Simoni. This script simulates the connection between 2 neurons and uses a variable time step approach to solving the ODEs. Aster Zawaideh made some modifications to output the state variables relevant to the synaptic module and resampled the results using 
```
t_fixed = linspace(0,10000,500);
%Evaluate differential equation solution structure
y_fixed = deval(soln1,t_fixed);
```
The above code helps convert the expected results to a fixed time step format to make it compatible with our approach in hardware.
This script also generates some plots to help visualize the membrane voltage and synaptic current over time.
