clear all;
close all;
clc;

% Define the duration of each state in seconds
red_time = 10;
yellow_time = 5;
green_time = 15;

% Initialize the state and timer
state = 'red';
timer = 0;

% Create a time vector for plotting
t = 0:0.1:red_time+yellow_time+green_time;

% Initialize the signal vectors
red_signal = zeros(size(t));
yellow_signal = zeros(size(t));
green_signal = zeros(size(t));

% Simulation loop
% Use strcmp for string comparison
for i = 1:length(t)
    if strcmp(state, 'red') 
        if timer < red_time
            red_signal(i) = 1;
        else
            state = 'yellow';
            timer = 0;
        end
    elseif strcmp(state, 'yellow')
        if timer < yellow_time
            yellow_signal(i) = 1;
        else
            state = 'green';
            timer = 0;
        end
    elseif strcmp(state, 'green')
        if timer < green_time
            green_signal(i) = 1;
        else
            state = 'red';
            timer = 0;
        end
    end
    timer = timer + 0.1; % Increment the timer
end

% Plot the signals
figure;
plot(t, red_signal, 'r', 'LineWidth', 2);
hold on;
plot(t, yellow_signal, 'y', 'LineWidth', 2);
plot(t, green_signal, 'g', 'LineWidth', 2);
xlabel('Time (s)');
ylabel('Signal');
title('Traffic Light Simulation');
legend('Red', 'Yellow', 'Green');
grid on;