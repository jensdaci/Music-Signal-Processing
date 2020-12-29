% Names:       Jens Daci and Jonathan Coskuner
% Course:      Signals and Systems
% Description: This code reads the .wav file and plots the following:
%              1. Time Domain Graph
%              2. Frequency Domain Graph
%              3. Spectrogram

% Reading the file
filename = 'song.wav';
[original, Fs] = audioread(filename);
N = length(original);

figure(1);
set (gcf, 'color', 'w')

% Plotting the Time Domain Graph (full)
subplot(3,1,1);
t = linspace(0, N/Fs, N);
plot(t, original);
title("Time Domain Graph (Full)");
ylim([-1 1]);
xlabel("Time [s]");
ylabel("Amplitude");

% Plotting the Time Domain Graph (section of it)
subplot(3,1,2);
t = linspace(0, N/Fs, N);
plot(t, original);
title("Time Domain Graph (Section)");
ylim([-1 1]);
xlim([0.45 0.55]);
xlabel("Time [s]");
ylabel("Amplitude");

% Plotting the Frequency Domain Graph
subplot(3,1,3);
fftSignal = fft(original);
fftSignal = fftshift(fftSignal);
dF = Fs/N;
f = -Fs/2 : dF : Fs/2-dF;
plot(f, abs(fftSignal)/N);
title("Frequency Domain Graph");
xlim([-550 550]);
xlabel("Frequency [Hz]");
ylabel("Magnitude");

figure(2)
spectrogram(original,256,120,128,1e3,'yaxis');
title("Spectrogram of the Original Sound");

