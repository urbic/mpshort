beginfig(0)

draw for d:=0 upto 7: cm*dir(45d)-- endfor cycle;

label.rt("$P_0$", cm*right);
label.urt("$P_1$", cm*dir 45);

draw (-1.5cm, -1.5cm) withpen nullpen withcolor black;
draw (1.5cm, 1.5cm) withpen nullpen withcolor black;

endfig
