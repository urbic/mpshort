input elementi;
background:=black;

vardef showseg(expr p, n)=
	draw (point n of p)
			..controls (postcontrol n of p) and (precontrol n+1 of p)..
		(point n+1 of p) withpen boldpen withcolor red;
	draw (point n of p)--(postcontrol n of p) withcolor .5 red;
	draw (precontrol n+1 of p)--(point n+1 of p) withcolor .5red;
	markdot.circle(point n of p) fg=>red, bg=>background;
	markdot.circle(postcontrol n of p) fg=>red, bg=>background;
	markdot.circle(precontrol n+1 of p) fg=>red, bg=>background;
	markdot.circle(point n+1 of p) fg=>red, bg=>background;
enddef;

path snake;
snake=origin{dir 20}
		..(0, 3cm){up}
		..{dir 10}(cm, 5cm)
		..{left}(-.5cm, 4cm)
		..{up}(0, 7.5cm);
