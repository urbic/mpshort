beginfig(0)

path p, q;

p=reverse(halfcircle scaled -1.5cm
		..reverse halfcircle scaled 3cm shifted (1.5cm, .75cm)
		..cycle);

for t:=0 step .1 until length p:
	drawarrow (point t of p)--((point t of p)+(unitvector(direction t of p)*1.5cm))
			withcolor .5red withpen tinypen;
endfor

draw p withpen boldpen;

endfig
