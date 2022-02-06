input catface;

beginfig(0)

color catcolor, bgcolor, darkcatcolor, darkbgcolor;
catcolor=(.25, .5, .7);
bgcolor=.5orange;
darkcatcolor=.5catcolor;
darkbgcolor=.5bgcolor;

catface(identity scaled 3cm, darkcatcolor, darkbgcolor);
catface(identity shifted (.75, .5) scaled 3cm, catcolor, bgcolor);

drawarrow (3cm, 0)--(3cm*1.75, 1.5cm) withcolor red;

endfig
