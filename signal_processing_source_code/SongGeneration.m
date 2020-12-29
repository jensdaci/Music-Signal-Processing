% Names:       Jens Daci and Jonathan Coskuner
% Course:      Signals and Systems
% Description: This code generates a .wav file (song)

clear;
FS=8000; % sampling frequency
A=0.5; % Amplitude of each wave

% All the notes used in making the song
% Some of the notes have different lengths
g=A*sin(2*pi*392*(0:0.000125:0.3));
glong=A*sin(2*pi*392*(0:0.000125:1.0));
c=A*sin(2*pi*261.63*(0:0.000125:0.5));
clong=A*sin(2*pi*261.63*(0:0.000125:1.1));
c_five_octet=A*sin(2*pi*523.25*(0:0.000125:1.0));
DS=A*sin(2*pi*311.13*(0:0.000125:0.5));
DSshort=A*sin(2*pi*311.13*(0:0.000125:0.3));
AS=A*sin(2*pi*466.16*(0:0.000125:0.4));
f=A*sin(2*pi*349.23*(0:0.000125:0.5));
fshort=A*sin(2*pi*349.23*(0:0.000125:0.4));
flong=A*sin(2*pi*349.23*(0:0.000125:1));
GS=A*sin(2*pi*415.30*(0:0.000125:0.4));

% Generating the lines of music using the notes above
line1=[c,DS,glong,f,DS,clong];
line2=[c,DS,g,g,g,f,DS,clong];
line3=[fshort,GS,c_five_octet,AS];
line4=[GS,flong,c,DS,g,g,g,DSshort,c];

% Generating the song using the lines created
song=[line1,line2,line3,line4];
% Saving the song waveform as .wav file
audiowrite('song.wav', song, FS);

