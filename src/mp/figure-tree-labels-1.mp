input tree;

beginfig(0)

randomseed:=.1;
thickness=4mm;
z1=origin;
z2=(0, 2cm);
z3=shortening[z2, z1 rotatedaround(z2, offset+uniformdeviate(branchrotation))];
z4=shortening[z2, z1 rotatedaround(z2, -offset-uniformdeviate(branchrotation))];

% TODO markangle.arcfill(z2+dir 45, z2, z2+up) extra=>80, fg=>.25red;

draw z1--z2 withpen pencircle scaled thickness withcolor .5green;
draw z2--z3 withpen pencircle scaled (thinning*thickness)
	withcolor lightening[.5green, white];
draw z2--z4 withpen pencircle scaled (thinning*thickness)
	withcolor lightening[.5green, white];
draw z2--(z2+3cm*dir(45))
	withcolor .5red
	withpen tinypen;
draw (z2+3cm*up)--(z2+1.5cm*unitvector(z1-z2))
	withcolor .5red
	withpen tinypen;

draw z1 withpen pencircle scaled 2bp withcolor .5red;
draw z2 withpen pencircle scaled 2bp withcolor .5red;
draw z3 withpen pencircle scaled 2bp withcolor .5red;
draw z4 withpen pencircle scaled 2bp withcolor .5red;

markangle.arcarrowboth.ccw(z2, z2+dir 45, z2+up, 1) fg=>red, scale=>9; % TODO extra=>80, fg=>.5red;
%markangle.arcdblarrow(z2+down, z2, z2+dir 45, 1) extra=>40, fg=>.5red;
%markangle.arc(z3, z2, z2+up, 1) extra=>10;

%begingroup
interim labeloffset:=8bp;

label.bot("$a$", z1);
label.lft("$b$", z2);
label.top("$c$", z3);
label.top("$d$", z4);
label.top("$\theta$", z2+2.2cm*dir 62);
%label.rt("$\phi$", z2+cm*dir -22.5);
%endgroup

endfig
