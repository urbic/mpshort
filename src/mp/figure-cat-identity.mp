input catface;

beginfig(0)

color catcolor, bgcolor;
catcolor=(.25, .5, .7);
bgcolor=.5foreground;

catface(identity scaled 3cm, catcolor, bgcolor);
drawaxes(0, 0, 4cm, 4cm);
label.bot("$O$", origin);
label.bot("$1$", (3cm, 0));
label.bot("$x$", (4cm, 0));
label.lft("$1$", (0, 3cm));
label.lft("$y$", (0, 4cm));

endfig
