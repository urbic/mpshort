beginfig(0)

for i:=0 upto 50:
	draw fullcircle scaled (.2cm*i) shifted (.5cm, .5cm)
			withcolor orange withpen boldpen;
endfor

clip currentpicture to halfcircle scaled -1.5cm
		..halfcircle scaled 3cm shifted (1.5cm, .75cm)
		..cycle;
endfig
