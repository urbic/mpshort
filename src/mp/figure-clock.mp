beginfig(0)

vardef clock(expr hours, minutes)=
	numeric clockdiam;
	clockdiam=4.5cm;

	color framecolor, bgcolor;
	%framecolor=red+.85green;
	framecolor=.8white;
	%bgcolor=.45green;%.6blue;
	%bgcolor=(.0625, .125, .175);
	bgcolor=.2white;

	fill fullcircle scaled 1.04clockdiam withcolor bgcolor;

	%%%% Shadows
	draw fullcircle scaled clockdiam shifted (bp*(1, -.5)) withcolor .4bgcolor withpen pencircle scaled 1bp;

	draw fullcircle scaled .83clockdiam shifted (bp*(1, -.5)) withcolor .4bgcolor withpen pencircle scaled 2bp;

	draw fullcircle scaled .8clockdiam withpen pencircle scaled .5bp withcolor framecolor;

	for i=1 upto 12:
		for j=1 upto 4:
			draw (.39*clockdiam*dir(90-30*i-j*6))-- (.41*clockdiam*dir(90-30*i-j*6))
			shifted (bp*(1, -.5)) withcolor .4bgcolor 
				withpen pencircle scaled .5bp;
		endfor
		draw (.38*clockdiam*dir(90-30*i))-- (.41*clockdiam*dir(90-30*i))
			shifted (bp*(1, -.5)) withcolor .4bgcolor 
			withpen pencircle scaled 1.5bp;
		label("\scriptsize\rmfamily"&decimal(i), .46*clockdiam*dir(90-30*i))
			shifted (.5bp*(1, -.5)) withcolor .4bgcolor;	
		
		for j=1 upto 4:
			draw (.39*clockdiam*dir(90-30*i-j*6))-- (.41*clockdiam*dir(90-30*i-j*6))
				withpen pencircle scaled .5bp withcolor framecolor;
		endfor
		draw (.38*clockdiam*dir(90-30*i))-- (.41*clockdiam*dir(90-30*i))
			withpen pencircle scaled 1.5bp withcolor framecolor;
		label("\scriptsize\rmfamily"&decimal(i), .46*clockdiam*dir(90-30*i)) withcolor framecolor;
	endfor

	%%%%

	draw fullcircle scaled clockdiam withpen pencircle scaled 1bp withcolor framecolor;
	draw fullcircle scaled .83clockdiam withpen pencircle scaled 2bp withcolor framecolor;
	draw fullcircle scaled .8clockdiam withpen pencircle scaled .5bp withcolor framecolor;

	label("\tiny\hologo{METAPOST}", .15clockdiam*down shifted (.5bp*(1, -.5))) withcolor .4bgcolor;
	label("\tiny\hologo{METAPOST}", .15clockdiam*down) withcolor .75framecolor;

	draw ((-.03*clockdiam*dir(90-30*hours))-- (.3*clockdiam*dir(90-30*hours)))
			shifted (1bp*(1, -.5))
			withpen pencircle scaled 3bp
			withcolor .4bgcolor;
	draw (-.03*clockdiam*dir(90-30*hours))-- (.3*clockdiam*dir(90-30*hours))
			withpen pencircle scaled 3bp withcolor framecolor;
	draw (-.05*clockdiam*dir(90-6*minutes))-- (.35*clockdiam*dir(90-6*minutes))
			withpen pencircle scaled 1.8bp withcolor bgcolor;
	draw ((-.05*clockdiam*dir(90-6*minutes))-- (.35*clockdiam*dir(90-6*minutes)))
			shifted (1bp*(1, -.5))
			withpen pencircle scaled 1.5bp
			withcolor .4bgcolor;
	draw (-.05*clockdiam*dir(90-6*minutes))-- (.35*clockdiam*dir(90-6*minutes))
			withpen pencircle scaled 1.5bp withcolor framecolor;

	fill fullcircle scaled 1bp withcolor .4bgcolor;
enddef;

numeric minutes, hours;
minutes=time;
hours=minutes/60;
if hours>=12: hours:=hours-12; fi

clock(hours, minutes);

endfig
