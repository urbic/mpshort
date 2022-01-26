input plain;
input elementi;

%% Colors
color cyan, magenta, yellow, orange;

cyan:=(0, 1, 1);
magenta:=(1, 0, 1);
yellow:=(1, 1, 0);
orange:=(1, .5, 0);

foreground:=orange;
background:=black;

%% Pens
pen tinypen, thinpen, normalpen, thickpen, widepen, boldpen, hugepen;

tinypen=pencircle scaled .2bp;
thinpen=pencircle scaled .2828427bp;
normalpen=pencircle scaled .4bp;
thickpen=pencircle scaled .5656854bp;
widepen=pencircle scaled .8bp;
boldpen=pencircle scaled 1.1313708bp;
hugepen=pencircle scaled 1.6bp;

vardef drawaxes(expr llx, lly, urx, ury)=
	drawarrow (llx, 0)--(urx, 0) withpen thinpen withcolor .5foreground;
	drawarrow (0, lly)--(0, ury) withpen thinpen withcolor .5foreground;
enddef;

%% Labels
labeloffset:=5bp;

extra_beginfig:="drawoptions(withcolor foreground);";

