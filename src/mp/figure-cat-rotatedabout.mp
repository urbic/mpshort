input catface;

beginfig(0)

color catcolor, bgcolor, darkcatcolor, darkbgcolor;
catcolor=(.25, .5, .7);
bgcolor=.5orange;
darkcatcolor=.5catcolor;
darkbgcolor=.5bgcolor;

catface(identity scaled 3cm, darkcatcolor, darkbgcolor);
catface(identity rotatedabout((1, 1), 90) scaled 3cm, catcolor, bgcolor);

markdot.circle((3cm, 3cm)) fg=>red;
markangle.arcarrowend.ccw((3cm, 3cm), (3cm, 3cm)+left, (3cm, 3cm)+down, 1) fg=>red, scale=>2;

endfig
