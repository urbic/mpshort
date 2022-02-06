beginfig(0)

draw for d:=0 upto 7: cm*dir(45d)-- endfor cycle;

label.rt("$P_0$", cm*right);
label.urt("$P_1$", cm*dir 45);
label.top("$P_2$", cm*up);
label.ulft("$P_3$", cm*dir 135);
label.lft("$P_4$", cm*left);

draw (-1.5cm, -1.5cm) withpen nullpen withcolor black;
draw (1.5cm, 1.5cm) withpen nullpen withcolor black;

endfig
