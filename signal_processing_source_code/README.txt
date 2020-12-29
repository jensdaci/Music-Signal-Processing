=============
README FILE
=============
=================================================================
Names:		Jens Daci
		Jonathan Coskuner

Project:	Time and Frequency Analysis of Signals
		Term Project Report

Course:		Signals and Systems (EENG 341-M01)

Semester:	Spring 2019 Semester

=================================================================


I. File List
----------------
song.wav		The original sound generated.
song_noise.wav		The sound after adding the WGN.
song_filtered.wav	The sound after being filtered. 

SongGeneration.m	File that generates the sound.
SongAnalysis.m		File that analyzes the sound.
SongFiltering.m		File that adds noise, 
			designs filter and applies filter.

Frequencies.xlsx	Excel file with frequencies 
			of musical notes




II. MATLAB Version
--------------------
MATLAB® is a programming platform designed specifically for engineers and scientists.
 
The heart of MATLAB is the MATLAB language, a matrix-based language 
allowing the most natural expression of computational mathematics.

The MATLAB version needed for the files to run is:

Version:	MATLAB R2017a




III. Installing MATLAB
------------------------
The MATLAB version mentioned above can be downloaded from the following website:

Link:		https://www.mathworks.com/products/new_products/release2017a.html

Steps:
	1) Go to the link above in your web browser.
	2) Click on Download Release Now.
	3) Wait for the .msi to be downloaded in your computer.
	4) After downloading, run the installation file.
	5) Follow the prompts that will appear on the screen. 
	6) Make sure to install all the MATLAB toolboxes including
	   the "Communications Systems Toolbox" (used in the files).
	7) Click Finish when the installation is done. 

After installation, all the files mentioned in the File List should
be able to run. 

Please note that any version higher than the one mentioned above should work 
perfectly fine. 




IV. Running the MATLAB Files
-------------------------------
Before performing the below mentioned steps, please make sure that you
go through Part III first. 

For all the MATLAB files the steps for running them are the same. 

Steps:
	1) Open the MATLAB file (.m files).
	2) Wait for the MATLAB software to load the program. 
	3) Make sure the MATLAB Editor window opens.
	4) On MATLAB's top toolbar (ribbon) click on "Run" (Green Arrow).
	5) Wait for the MATLAB software to run the program. 
	6) Based on the program chosen, different outputs 
	   should be expected (explained below). 


Expected Outputs:

	1) SongGeneration.m
		
		• No graphs should be expected when running this program.
		• A wave file named "song.wav" should be created in the folder. 
		• This file is the Spiderman Theme Song and can be 
		  played by clicking it. 
		• Reference: 
		     https://pianoletternotes.blogspot.com/2017/10/spiderman-theme.html
	
	2) SongAnalysis.m
		
		• Three graphs should be expected as outputs on Figure 1:
		    -Time Domain Graph (Full)
		    -Time Domain Graph (Section)
		    -Frequency Domain Graph

		• Spectrogram should be expected on Figure 2. 

	3) SongFiltering.m

		• Four graphs should be expected as outputs:
		    -Time Domain Graph (Signal with Noise)
		    -Frequency Domain Graph (Signal with Noise)
		    -Time Domain Graph (Filtered Signal)
		    -Frequency Domain Graph (Filtered Signal)

		• Two wave files must be created as a result of the code:
		    -"song_noise.wav"
		    -"song_filtered.wav"
			
		
