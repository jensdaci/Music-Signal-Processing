% Names:       Jens Daci and Jonathan Coskuner
% Course:      Signals and Systems
% Description: This code reads the .wav file and does the following:
%              1. Adds noise to the original signal (plots and saves file)
%              2. Designs filter to cancel the noise (frequency response)
%              3. Filter is added to the noisy signal (saves file)

% Reading the file
filename = 'song.wav';
[original, Fs] = audioread(filename);
N = length(original);
t = linspace(0, N/Fs, N);
set (gcf, 'color', 'w')

% Adding noise to the original signal
song_noise = awgn(original, 10, 'measured');
audiowrite('song_noise.wav', song_noise, Fs);

% Plotting the Time Domain Graph
% Original and Noisy Graphs
subplot(4,1,1)
plot(t, [original song_noise]);
ylim([-1 1]);
xlim([5.49 5.52]);
title("Time Domain Graph (Signal with Noise)")
xlabel("Time [s]");
ylabel("Amplitude");
legend("Original Signal", "Noisy Signal");

% Plotting the Frequency Domain Graph (with Noise)
subplot(4,1,2);
X_mags = abs(fft(song_noise))/7500;
num_bins = length(X_mags);
plot([0:1/(num_bins/2-1):1], X_mags(1:num_bins/2));
title("Frequency Domain Graph (Signal with Noise)");
xlabel("Normalized Frequency [\pi*rads/sample]");
ylabel("Magnitude");
ylim([0 1.1]);

% Designing a filter to filter out the noise
[B,A] = butter(20, 0.2, 'low');
song_filtered = filter(B, A, song_noise);
audiowrite('song_filtered.wav', song_filtered, Fs);

% Plotting the frequency response of the filter
H = freqz(B, A, floor(N/2));
hold on
plot([0:1/(N/2 - 1):1], abs(H));
legend("FT of Signal", "Response of Filter")

% Plotting the Time Domain Graph 
% Original and Filtered Graphs
subplot(4,1,3)
plot(t, [original song_filtered]);
ylim([-1 1]);
xlim([5.49 5.52]);
title("Time Domain Graph (Filtered Signal)")
xlabel("Time [s]");
ylabel("Amplitude");
legend("Original Signal", "Filtered Signal");

% Plotting the Frequency Domain Graph 
% Filtered Signal
subplot(4,1,4);
fftSignal = fft(song_filtered);
fftSignal = fftshift(fftSignal);
dF = Fs/N;
f = -Fs/2 : dF : Fs/2-dF;
plot(f, abs(fftSignal)/N);
title("Frequency Domain Graph (Filtered Signal)");
xlim([-550 550]);
xlabel("Frequency [Hz]");
ylabel("Magnitude");


