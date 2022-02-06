input catface;

beginfig(0)

color catcolor, bgcolor, darkcatcolor, darkbgcolor;
catcolor=(.25, .5, .7);
bgcolor=.5orange;
darkcatcolor=.5catcolor;
darkbgcolor=.5bgcolor;

catface(identity scaled 3cm, darkcatcolor, darkbgcolor);
catface(identity rotated 60 scaled 3cm, catcolor, bgcolor);

markdot.circle(origin) fg=>red;
markangle.arcarrowend.ccw(origin, right, dir 60, 1) fg=>red, scale=>2;

endfig
