input catface;

beginfig(0)

color catcolor, bgcolor, darkcatcolor, darkbgcolor;
catcolor=(.25, .5, .7);
bgcolor=.5orange;
darkcatcolor=.5catcolor;
darkbgcolor=.5bgcolor;

transform T;
T=identity scaled .8 rotated -30 slanted .5 shifted (.5, .25);

catface(identity scaled 3cm, darkcatcolor, darkbgcolor);
catface(identity transformed T scaled 3cm, catcolor, bgcolor);

endfig
