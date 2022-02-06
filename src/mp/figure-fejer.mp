beginfig(0)

z1=origin;
z2=(2cm, 0);
z3=(1.5cm, 5cm);
z4=.45[z1, z2]; % perpbase(z3, z1, z2);
z5=.15[z1, z3];
z6=.1[z2, z3];
z7=z4 reflectedabout(z1, z3);
z8=z4 reflectedabout(z2, z3);

draw z1--z2--z3--cycle withpen boldpen;
draw z3--z4 withpen thinpen;
draw z4--z5--z6--cycle withpen thinpen;
draw z3--z7--z5 withpen thinpen;
draw z3--z8--z6 withpen thinpen;
draw z7--z8 withpen thinpen;

markpath.ticks(z3--z4, 1);
markpath.ticks(z3--z7, 1);
markpath.ticks(z3--z8, 1);
markpath.ticks(z5--z4, 2);
markpath.ticks(z5--z7, 2);
markpath.ticks(z6--z4, 3);
markpath.ticks(z6--z8, 3);

markangle.arc.ccw(z3, z1, z4, 1);
markangle.arc.ccw(z3, z7, z1, 1) scale=>1.05; % TODO extra=>1;
markangle.arc.ccw(z3, z4, z2, 2); % TODO extra=>1;
markangle.arc.ccw(z3, z2, z8, 2) scale=>1.05;

label.bot("$A$", z1);
label.bot("$B$", z2);
label.top("$C$", z3);
label.bot("$R$", z4);
label.ulft("$Q$", z5);
label.urt("$P$", z6);
label.bot("$R'$", z7);
label.bot("$R''$", z8);

endfig
