beginfig(0)

for i:=0 step 1 until 10:
	draw origin-- 3cm*dir(9i);
	draw quartercircle scaled (6cm*i/10);
endfor

endfig
