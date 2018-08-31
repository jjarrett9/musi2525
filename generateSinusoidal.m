function [t,x] = generateSinusoidal(amplitude, frequencyInHz, lengthInS)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

fs = 44100;

sampPerSec = 1/fs;

t = (0:sampPerSec:lengthInS);

x = amplitude * sin(2*pi*frequencyInHz*t);

plot(t,x);

end

