input catface;

beginfig(0)

color catcolor, bgcolor, darkcatcolor, darkbgcolor;
catcolor=(.25, .5, .7);
bgcolor=.5foreground;
darkcatcolor=.5catcolor;
darkbgcolor=.5bgcolor;

catface(identity scaled 3cm, darkcatcolor, darkbgcolor);
catface(identity reflectedabout((0, .5), (1, 1)) scaled 3cm, catcolor, bgcolor);

draw (0, 1.5cm)--(3cm, 3cm) withcolor red dashed evenly;
markdot.circle(3cm*(0, .5)) fg=>red;
markdot.circle(3cm*(1, 1)) fg=>red;

endfig
