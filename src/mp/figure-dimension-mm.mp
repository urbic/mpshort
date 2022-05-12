beginfig(0)

s=mm;

drawarrow (-.1in, 0)--origin withpen tinypen withcolor .5red;
drawarrow (s+.1in, 0)--(s, 0) withpen tinypen withcolor .5red;
fill unitsquare xscaled s yscaled .1in shifted (.05in*down)
	withcolor .75red;

endfig
