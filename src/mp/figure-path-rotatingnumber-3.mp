beginfig(0)

path p, q;

p=halfcircle scaled 1.5cm
		..halfcircle scaled 3cm shifted (.25cm, .25cm)
		..cycle;

for t:=0 step .1 until length p:
	drawarrow (point t of p)--((point t of p)+(unitvector(direction t of p)*1.5cm))
			withcolor .5red withpen tinypen;
endfor

draw p withpen boldpen;

endfig
