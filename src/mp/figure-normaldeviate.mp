beginfig(0)

draw unitsquare scaled 2cm;

for i:=1 upto 300:
	draw (cm+normaldeviate*2mm, cm+normaldeviate*5mm)
		withpen pensquare scaled bp
		withcolor red;
endfor

endfig
