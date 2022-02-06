beginfig(0)

color tomato;
tomato=(1, 0.388235294117647, 0.27843137254902);
path c[];
c1=fullcircle scaled 2cm shifted (.5cm*sqrt 3*dir -150);
c2=fullcircle scaled 2cm shifted (.5cm*sqrt 3*dir -30);
c3=fullcircle scaled 2cm shifted (.5cm*sqrt 3*dir 90);
c4=buildcycle(c1 rotatedabout((.5cm*sqrt 3*dir -150), 90), c2);
c5=buildcycle(c2, c3);
c6=buildcycle(c3, c1);
c7=buildcycle(c1, c2, c3);

fill c1 withcolor (redpart tomato, 0, 0);
fill c2 withcolor (0, greenpart tomato, 0);
fill c3 withcolor (0, 0, bluepart tomato);
fill c4 withcolor (redpart tomato, greenpart tomato, 0);
fill c5 withcolor (0, greenpart tomato, bluepart tomato);
fill c6 withcolor (redpart tomato, 0, bluepart tomato);
fill c7 withcolor tomato;

endfig
