# Traffice_light_simulator
Traffic Light Simulation

This MATLAB script simulates a simple traffic light system with a fixed cycle of red, yellow, and green lights.

How to Use:

Run the Script:
Save the code as a .m file (e.g., traffic_light_simulation.m).
Open MATLAB and run the script by typing traffic_light_simulation in the Command Window and pressing Enter.
Code Explanation:

Parameter Definition:
red_time, yellow_time, and green_time: Define the duration of each traffic light state in seconds.
Initialization:
state: Initializes the current state of the traffic light to 'red'.
timer: Initializes a timer to keep track of time within each state.
t: Creates a time vector for plotting.
red_signal, yellow_signal, and green_signal: Initialize signal vectors to store the state of each light at each time step.
Simulation Loop:
The for loop iterates through each time step.
Inside the loop:
The current state is checked using strcmp.
If the current state is 'red' and the timer is less than the red time, the red signal is set to 1.
If the red timer expires, the state is changed to 'yellow', and the timer is reset.
Similar logic is applied for the yellow and green states.
The timer is incremented by 0.1 seconds in each iteration.
Plotting the Signals:
The plot function is used to plot the red, yellow, and green signals over time.
The xlabel, ylabel, title, legend, and grid on functions are used to add labels, a title, a legend, and a grid to the plot.
