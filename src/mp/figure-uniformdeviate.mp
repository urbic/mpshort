beginfig(0)

draw unitsquare scaled 2cm;

for i:=1 upto 300:
	draw (uniformdeviate(2cm), uniformdeviate(2cm))
		withpen pensquare scaled bp
		withcolor red;
endfor

endfig
