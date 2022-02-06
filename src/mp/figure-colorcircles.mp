beginfig(0)
u:=cm;

path c[];
c1=fullcircle scaled 3u shifted (.75u*sqrt 3*dir -150);
c2=fullcircle scaled 3u shifted (.75u*sqrt 3*dir -30);
c3=fullcircle scaled 3u shifted (.75u*sqrt 3*dir 90);
c4=buildcycle(c1 rotatedabout((.75u*sqrt 3*dir -150), 90), c2);
c5=buildcycle(c2, c3);
c6=buildcycle(c3, c1);
c7=buildcycle(c1, c2, c3);

fill c1 withcolor red;
fill c2 withcolor green;
fill c3 withcolor blue;
fill c4 withcolor red+green;
fill c5 withcolor green+blue;
fill c6 withcolor blue+red;
fill c7 withcolor white;

endfig
