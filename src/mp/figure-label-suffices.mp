beginfig(0)

draw origin withpen pencircle scaled 2mm;

begingroup
	interim labeloffset:=3pc;
	label.rt("\texttt{rt}", origin) withcolor .5[yellow, white];
	label.urt("\texttt{urt}", origin) withcolor .5[yellow, white];
	label.top("\texttt{top}", origin) withcolor .5[yellow, white];
	label.ulft("\texttt{ulft}", origin) withcolor .5[yellow, white];
	label.lft("\texttt{lft}", origin) withcolor .5[yellow, white];
	label.llft("\texttt{llft}", origin) withcolor .5[yellow, white];
	label.bot("\texttt{bot}", origin) withcolor .5[yellow, white];
	label.lrt("\texttt{lrt}", origin) withcolor .5[yellow, white];
endgroup;

endfig
