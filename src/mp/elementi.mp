%%
%% This is file `elementi.mp',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% elementi.dtx  (with options: `planimetry')
%% 
%% IMPORTANT NOTICE:
%% 
%% For the copyright see the source file.
%% 
%% Any modified versions of this file must be renamed
%% with new filenames distinct from elementi.mp.
%% 
%% For distribution of the original source see the terms
%% for copying and modification in the file elementi.dtx.
%% 
%% This generated file may be distributed as long as the
%% original source files, as listed above, are part of the
%% same distribution. (The sources need not necessarily be
%% in the same archive or directory.)
%% \DoNotIndex{\newcommand,\newenvironment}

if known elementi.version: endinput; fi
string elementi.version;
elementi.version:="0.1";
def homothetic(expr center, scale)=
	shifted -center scaled scale shifted center
enddef;
def centrallysymmetric(expr center)=
	homothetic(center, -1)
enddef;
vardef arcpoint expr l of p=
	point (arctime l of p) of p
enddef;
vardef arcdirection expr l of p=
	direction (arctime l of p) of p
enddef;
vardef arcsubpath expr ll of p=
	subpath (arctime (xpart ll) of p, arctime (ypart ll) of p) of p
enddef;
vardef fracarcpoint expr f of p=
	arcpoint f*(arclength p) of p
enddef;
vardef fracarcdirection expr f of p=
	arcdirection f*(arclength p) of p
enddef;
vardef fracarcsubpath expr ff of p=
	arcsubpath ff*(arclength p) of p
enddef;
vardef texlabel@#(expr tex, obj)=
	label@#(textext(tex), obj);
enddef;
vardef circle(expr c, r)=
	fullcircle scaled (2r) shifted c
enddef;
vardef arc.cw(expr c, r, phi, psi)=
	reverse arc.ccw(c, r, psi, phi+360)
enddef;

vardef arc.ccw(expr c, r, phi, psi)=
	(fracarcsubpath (0, psi-phi)/360 of fullcircle)
		scaled (2r) rotated phi shifted c
enddef;
vardef polyline(text points)=
	save i;
	i:=0;
	for p=points: if incr i<>1: -- fi p endfor
enddef;
vardef polygon(text points)=
	polyline(points)--cycle
enddef;
vardef triangle(expr a, b, c)=
	a--b--c--cycle
enddef;
vardef unitregpoly(expr n)=
	for i=0 upto (n-1): dir(i*360/n)-- endfor cycle
enddef;
vardef intersection(expr a, b, c, d)=
	save e;
	pair e;
	e=whatever[a, b]=whatever[c, d];
	e
enddef;
vardef conjugate primary z=
	(xpart z, -ypart z)
enddef;
primarydef z cmul w=
	(z zscaled w)
enddef;
primarydef z cdiv w=
	begingroup
	save a;
	numeric a;
	a:=abs(w);
	((1/a*z) zscaled (1/a*(conjugate w)))
	endgroup
enddef;
vardef touch(expr p, c, r)=
	save d, l;
	numeric d, l;
	d:=abs(c-p);
	if d>r:
		l:=d+-+r;
		p+l*unitvector(c-p) rotated angle((l, r))
	elseif d=r:
		p
	else:
		hide(errmessage "touch: Can not draw tangent line from inside of the circle");
	fi
enddef;
vardef altbase(expr a, b, c)=
	intersection(b, c, a, a+((c-b) zscaled up))
enddef;
vardef centroid(expr a, b, c)=
	(a+b+c)/3
enddef;
vardef orthocenter(expr a, b, c)=
	intersection(a, altbase(a, b, c), b, altbase(b, c, a))
enddef;
vardef median(expr a, b, c)=
	a--.5[b, c]
enddef;
vardef bisectorbase(expr a, b, c)=
	(abs(b-a)/(abs(b-a)+abs(c-a)))[b, c]
enddef;
vardef bisector(expr a, b, c)=
	a--bisectorbase(a, b, c)
enddef;
vardef altitude(expr a, b, c)=
	a--altbase(a, b, c)
enddef;
vardef simedian(expr a, b, c)=
	a--simedianbase(a, b, c)
enddef;
vardef incenter(expr a, b, c)=
	intersection(a, bisectorbase(a, b, c), b, bisectorbase(b, c, a))
enddef;
vardef inradius(expr a, b, c)=
	save center;
	pair center;
	center=incenter(a, b, c);
	abs(center-altbase(center, b, c))
enddef;
vardef incircle(expr a, b, c)=
	save center;
	pair center;
	center=incenter(a, b, c);
	circle(center, abs(center-altbase(center, b, c)))
enddef;
vardef intouchpoint(expr a, b, c)=
	altbase(incenter(a, b, c), b, c)
enddef;
vardef gergonnepoint(expr a, b, c)=
	intersection(
		a, intouchpoint(a, b, c),
		b, intouchpoint(b, c, a)
	)
enddef;
vardef excenter(expr a, b, c)=
	intersection
	(
		a, bisectorbase(a, b, c),
		b, bisectorbase(b, a, c) rotatedabout(b, 90)
	)
enddef;
vardef exradius(expr a, b, c)=
	save center;
	pair center;
	center=excenter(a, b, c);
	abs(center-altbase(center, b, c))
enddef;
vardef excircle(expr a, b, c)=
	save center;
	pair center;
	center=excenter(a, b, c);
	circle(center, abs(center-altbase(center, b, c)))
enddef;
vardef extouchpoint(expr a, b, c)=
	altbase(excenter(a, b, c), b, c)
enddef;
vardef nagelpoint(expr a, b, c)=
	intersection(
		a, extouchpoint(a, b, c),
		b, extouchpoint(b, c, a)
	)
enddef;
vardef circumcenter(expr a, b, c)=
	intersection
	(
		.5[b, c], .5[b, c]+((b-c) zscaled up),
		.5[a, c], .5[a, c]+((a-c) zscaled up)
	)
enddef;
vardef circumradius(expr a, b, c)=
	abs(circumcenter(a, b, c)-a)
enddef;
vardef circumcircle(expr a, b, c)=
	save center;
	pair center;
	center=circumcenter(a, b, c);
	circle(center, abs(center-a))
enddef;
vardef eulercenter(expr a, b, c)=
	circumcenter(.5[a, b], .5[b, c], .5[c, a])
enddef;
vardef eulercircle(expr a, b, c)=
	circumcircle(.5[a, b], .5[b, c], .5[c, a])
enddef;
vardef isotomic(expr p, a, b, c)=
	save lambda, mu, q;
	numeric lambda, mu;
	pair q;
	lambda[b, c]=whatever[a, p];
	mu[a, c]=whatever[b, p];
	q=whatever[a, (1-lambda)[b, c]]
		=whatever[b, (1-mu)[a, c]];
	q
enddef;
vardef isogonal(expr p, a, b, c)=
	save q;
	pair q;
	q=a+whatever*(a-p reflectedabout(a, incenter(a, b, c)))
		=b+whatever*(b-p reflectedabout(b, incenter(a, b, c)));
	q
enddef;
vardef simedianbase(expr a, b, c)=
	intersection(a, lemoinepoint(a, b, c), b, c)
enddef;
vardef lemoinepoint(expr a, b, c)=
	isogonal(centroid(a, b, c), a, b, c)
enddef;
vardef trianglevertex.ss(expr a, b)(expr v, u)=
	save w, c, cos, sin;
	numeric w, cos, sin;
	pair c;
	w=abs(b-a);
	cos=(v/w+w/v-u/v*u/w)/2;
	sin=1+-+cos;
	c=a+(v*unitvector(b-a) rotated(angle(cos, sin)));
	c
enddef;
vardef trianglevertex.aa(expr a, b)(expr beta, gamma)=
	trianglevertex.ss(a, b)(
		abs(b-a)*sind(gamma)/sind(beta+gamma),
		abs(b-a)*sind(beta)/sind(beta+gamma)
	)
enddef;
pi:=3.14159265358979;
rad:=180/pi;
def processoptions(text decls)(text opts)=
	forsuffixes decl=decls:
		vardef decl => expr val=
			def decl=val enddef;
		enddef;
	endfor
	for o=opts: o; endfor
enddef;
newinternal markersize;
markersize:=dotlabeldiam;
pen markerpen;
markerpen=pencircle scaled .25bp;

path
	markerpath.circle,
	markerpath.square,
	markerpath.diamond,
	markerpath.triangle,
	markerpath.pentagon,
	markerpath.hexagon,
	markerpath.cross;
markerpath.circle=fullcircle;
markerpath.square=unitsquare shifted (-(.5, .5)) scaled (sqrt(pi)/2);
markerpath.diamond=markerpath.square rotated 45;
markerpath.triangle=unitregpoly(3) zscaled up
	scaled sqrt(pi/6/sind(120));
markerpath.pentagon=unitregpoly(5) zscaled up
	scaled sqrt(pi/10/sind(72));
markerpath.hexagon=unitregpoly(6) zscaled up
	scaled sqrt(pi/12/sind(60));
markerpath.cross=((1, 1)--(0, .25)--(-1, 1)--(-.25, 0)
		--(-1, -1)--(0, -.25)--(1, -1)--(.25, 0)--cycle);
color foreground;
foreground=black;
vardef markdots@#(text pp) text opts=
	for p=pp:
		markdot@#(p) opts;
	endfor
enddef;
vardef markdot@#(expr a) text opts=
	save size, bg, fg;
	size=markersize;
	color bg, fg;
	bg=background;
	fg=foreground;
	processoptions(fg, bg, size)(opts);
	fill markerpath@# scaled size shifted a withcolor bg;
	draw markerpath@# scaled size shifted a withcolor fg withpen markerpen;
enddef;
vardef markangle.arc@#(expr a, b, c, n) text opts=
	save size, scale, fg;
	size=markersize;
	scale=1;
	color fg;
	fg=foreground;
	processoptions(fg, bg, size, scale)(opts);
	save phi, psi;
	phi=angle(b-a);
	psi=angle(c-a);
	if phi<0: phi:=phi+360; fi
	if psi<0: psi:=psi+360; fi
	save sweep;
	sweep.ccw=(psi-phi) mod 360;
	sweep.cw=(phi-psi) mod 360;
	for i=1 upto n:
		draw arc@#(origin, 5bp*scale*sqrt(90/sweep@#)+i*.5size, 0, sweep.ccw)
			rotated phi shifted a
			withcolor fg
			withpen markerpen;
	endfor
enddef;
vardef markangle.arcarrowend@#(expr a, b, c, n) text opts=
	save size, scale, bg, fg;
	size=markersize;
	scale=1;
	color bg, fg;
	bg=background;
	fg=foreground;
	processoptions(fg, bg, size, scale)(opts);
	save phi, psi;
	phi=angle(b-a);
	psi=angle(c-a);
	if phi<0: phi:=phi+360; fi
	if psi<0: psi:=psi+360; fi
	save sweep;
	sweep.ccw=(psi-phi) mod 360;
	sweep.cw=(phi-psi) mod 360;
	interim ahlength:=.5size;
	for i=1 upto n:
		drawarrow arc@#(origin, 5bp*scale*sqrt(90/sweep@#)+i*.5size,
				0, sweep.ccw)
			rotated phi shifted a
			withcolor fg
			withpen markerpen;
	endfor
enddef;
vardef markangle.arcarrowbeg@#(expr a, b, c, n) text opts=
	save size, scale, bg, fg;
	size=markersize;
	scale=1;
	color bg, fg;
	bg=background;
	fg=foreground;
	processoptions(fg, bg, size, scale)(opts);
	save phi, psi;
	phi=angle(b-a);
	psi=angle(c-a);
	if phi<0: phi:=phi+360; fi
	if psi<0: psi:=psi+360; fi
	save sweep;
	sweep.ccw=(psi-phi) mod 360;
	sweep.cw=(phi-psi) mod 360;
	interim ahlength:=.5size;
	for i=1 upto n:
		drawarrow reverse arc@#(origin, 5bp*scale*sqrt(90/sweep@#)+i*.5size,
				0, sweep.ccw)
			rotated phi shifted a
			withcolor fg
			withpen markerpen;
	endfor
enddef;
vardef markangle.arcarrowboth@#(expr a, b, c, n) text opts=
	save size, scale, bg, fg;
	size=markersize;
	scale=1;
	color bg, fg;
	bg=background;
	fg=foreground;
	processoptions(fg, bg, size, scale)(opts);
	save phi, psi;
	phi=angle(b-a);
	psi=angle(c-a);
	if phi<0: phi:=phi+360; fi
	if psi<0: psi:=psi+360; fi
	save sweep;
	sweep.ccw=(psi-phi) mod 360;
	sweep.cw=(phi-psi) mod 360;
	interim ahlength:=.5size;
	for i=1 upto n:
		drawdblarrow arc@#(origin, 5bp*scale*sqrt(90/sweep@#)+i*.5size,
				0, sweep.ccw)
			rotated phi shifted a
			withcolor fg
			withpen markerpen;
	endfor
enddef;

vardef markpath.ticks(expr p, n) text opts=
	save size, fg, fraction;
	color fg;
	fg=foreground;
	size=markersize;
	fraction=.5;
	processoptions(size, fg, fraction)(opts);
	save pmid;
	pmid=fraction*arclength p;
	for i=-(n-1)/2 upto (n-1)/2:
		draw
			(
				arcpoint(pmid+i*.5size) of p+
					.5size*(unitvector(arcdirection(pmid+i*.5size) of p)
						zscaled down)
			)
			--
			(
				arcpoint(pmid+i*.5size) of p+
					.5size*(unitvector(arcdirection(pmid+i*.5size) of p)
						zscaled up)
			)
		withpen markerpen withcolor fg;
	endfor
enddef;
\endinput
%%
%% End of file `elementi.mp'.
