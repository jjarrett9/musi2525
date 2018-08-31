function [t,x] = generateSawtooth(amplitude, frequencyInHz, lengthInS)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
fs = 44100;

sampPerSec = 1/fs;

t = (0:sampPerSec:lengthInS);

x = zeros(1, fs+1);

for i= 1 : 20
    x = x + ((amplitude * 1/i) * sin(2*pi*frequencyInHz*i*t) * (-1)^(i+1));
end

x = 2*(x-mean(x))./ range(x);
plot(t,x);

end

