beginfig(0)

z1=origin;
z2=(1cm, 3.5cm);
z3=(-.5)[z1, z2];
z4=1.5[z1, z2];
z5=(2cm, -cm);

draw z3--z4 withpen thinpen dashed evenly scaled .5;
draw z1--z2 withpen boldpen;

markdot.circle(z1) fg=>orange;
markdot.circle(z2) fg=>orange;

for i:=-.4 step .1 until 1.5:
	drawarrow z5-- .975[z5, i[z1, z2]] withpen thinpen withcolor red;
endfor

markdot.circle(z5) fg=>orange;

label.lft("$z_0$", z1);
label.lft("$z_1$", z2);

endfig
