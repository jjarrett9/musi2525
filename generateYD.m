function [t,x] = generateYD(startFrequencyInHz)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

vec = [1 1 9/8 5/4 1 5/4 9/8 3/4 1 1 9/8 5/4 1];

frequencies = startFrequencyInHz.*vec;

x = [];
t = [];

for i = 1:13
    [t1,x1] = generateSinusoidal(1, frequencies(i), .5);
    x = [x x1];
    t = [t t1];
end
   
plot(13*t,x);

audiowrite('generateYDSound.wav', x, 44100);
end

