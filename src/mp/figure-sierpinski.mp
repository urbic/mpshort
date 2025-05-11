beginfig(0)

vardef sierpinski(expr order)=
	save s, ss;
	picture s, ss;
	s:=nullpicture;
	if order=0:
		addto s contour dir(-30)--dir(90)--dir(210)--cycle;
	else:
		ss:=sierpinski(order-1) scaled .5;
		addto s also ss;
		addto s also ss shifted (sqrt(3)/2*right);
		addto s also ss shifted (sqrt(3)/2*dir(60));
	fi
	s
enddef;

draw sierpinski(8) scaled 3cm withcolor .5green;

endfig
