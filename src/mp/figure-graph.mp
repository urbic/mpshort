input graphs;

beginfig(0)

drawaxes(-cm, -3cm, 3cm, 3cm);

vardef f(expr t)=
	t*(t-1)*(t-2)
enddef;

draw graph.f(-.6, 2.6, .025, cm, cm) withpen boldpen;

label.bot("$x$", (3cm, 0));
label.lft("$y$", (0,  3cm));

endfig
