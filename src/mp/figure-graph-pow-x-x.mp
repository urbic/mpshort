beginfig(0)

save f, g;

vardef f(expr x)=x**x enddef;
vardef g(expr x)=1+-+x enddef;
vardef graph@#(expr a, b, delta)=
	for i:=a step delta until b:
		(i, @#(i))--
	endfor
	(b, @#(b))
enddef;

drawaxes(-.25cm, -.25cm, 3.25cm, 3.25cm);
draw graph.f(0, 1, .01) scaled 3cm withcolor red;
draw graph.g(0, 1, .01) scaled 3cm withcolor .5green;

label.bot(btex $x$ etex, (3.25cm, 0));
label.lft(btex $y$ etex, (0, 3.25cm));

endfig
