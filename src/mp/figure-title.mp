beginfig(0)
u:=.85cm;

z1=origin;
z2=(5u, 0);
z3=(1u, 7.5u);

draw z1--z2--z3--cycle withpen hugepen;
draw altitude(z1, z2, z3);
draw altitude(z2, z3, z1);
draw altitude(z3, z1, z2);
draw eulercircle(z1, z2, z3) withcolor green withpen thickpen;

% TODO markangle.rt(z2, perpbase(z2, z1, z3), z3, 1) fg=>orange;
% TODO markangle.rt(z2, perpbase(z3, z1, z2), z3, 1) fg=>orange;
% TODO markangle.rt(z3, perpbase(z1, z2, z3), z1, 1) fg=>orange;

label.bot("$A$", z1);
label.bot("$B$", z2);
label.top("$C$", z3);

endfig
