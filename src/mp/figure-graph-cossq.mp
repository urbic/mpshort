beginfig(0)

drawarrow (-.25cm, 0)--(10cm, 0) withpen thinpen;
drawarrow (0, -1.25cm)--(0, 1.25cm) withpen thinpen;

draw ((0, 1)
	for i:=0 step .025 until 9.5:
		--(i, cosd(i**2*180/3.1415926))
	endfor)
	scaled cm
	withpen boldpen;

label.bot("$x$", (10cm, 0));
label.lft("$y$", (0, 1.25cm));

endfig
