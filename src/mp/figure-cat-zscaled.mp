input catface;

beginfig(0)

color catcolor, bgcolor, darkcatcolor, darkbgcolor;
catcolor=(.25, .5, .7);
bgcolor=.5orange;
darkcatcolor=.5catcolor;
darkbgcolor=.5bgcolor;

catface(identity scaled 3cm, darkcatcolor, darkbgcolor);
catface(identity zscaled (1.2, .5) scaled 3cm, catcolor, bgcolor);

endfig
