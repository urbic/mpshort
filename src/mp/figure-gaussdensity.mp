input graphs;

beginfig(0)

drawaxes(-4cm, -1/3cm, 4cm, 2cm);

vardef f(expr t)=2.718281828459045**(-(t**2)/2) enddef;

draw graph.f(-2.5, 2.5, .025, 4/3cm, 4/3cm) withpen boldpen;

label.bot(btex $x$ etex, (4cm, 0));
label.lft(btex $y$ etex, (0,  2cm));

endfig
