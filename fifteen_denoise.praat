#fifteen_denoise.praat
#denoises all audio files by 15 db

Create Strings as file list... list ./*.wav
numberOfFiles = Get number of strings

for ifile to numberOfFiles

	select Strings list
	fileName$ = Get string... ifile
	Read from file... ./'fileName$'

    Reduce noise: 0.0, 0.5, 0.025, 70, 10000, 40, -15.0, "spectral-subtraction"

	Write to WAV file... ./fifteen_'fileName$'
	select all
	minus Strings list
	Remove
	
endfor

select all
Remove
