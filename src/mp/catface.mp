vardef catface(expr T, catcolor, bgcolor)=
	transform t;
	path mous[], ear, face, eye, zra, m, ar;

	mous1=(-.075, -.12)--(-.25, -.18);
	mous2=(-.08, -.1)--(-.3, -.12);
	mous3=(-.075, -.08)--(-.25, -.06);
	ear=(.5dir 35-- .7dir 45-- .5dir55--cycle) yscaled .75;
	face=fullcircle yscaled .75;
	eye=fullcircle scaled .1 shifted (-.25, .15);
	zra=fullcircle xscaled .025 yscaled .075 shifted (-.25, .15);
	m=(-.2, -.2){right}..(-.025, -.125)..(0, -.1){right}..(.025, -.125)..{right}(.2, -.2);

	t:=identity
			shifted .625(1, 1)
			scaled .8
			transformed T;
	
	for j:=-5 upto 4:
		for i:=-5 upto 4:
			draw unitsquare
					shifted -(.5, .5)
					scaled .75
					shifted (.5, .5)
					scaled .125 shifted (.125(i, j)) transformed t
					withcolor bgcolor
					withpen thickpen;
		endfor
	endfor
	
	fill face transformed t withcolor catcolor;
	fill ear transformed t withcolor catcolor;
	fill ear xscaled -1 transformed t withcolor catcolor;
	unfill eye transformed t;
	unfill eye xscaled -1 transformed t;
	fill zra transformed t withcolor catcolor;
	fill zra xscaled -1 transformed t withcolor catcolor;
	undraw m transformed t withpen boldpen;
	for i:=1 upto 3:
		undraw mous[i] transformed t withpen thickpen;
		undraw mous[i] xscaled -1 transformed t withpen thickpen;
	endfor

enddef;
