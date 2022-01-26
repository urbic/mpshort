branchrotation:=45;
offset:=180-branchrotation;
thinning:=.7;
shortening:=.8;
lightening:=.1;

vardef tree(expr A, B, n, thickness, clr)=
    save C, D;
    pair C, D;

    C:=shortening[B, A rotatedaround(B, offset+uniformdeviate(branchrotation))];
    D:=shortening[B, A rotatedaround(B, -offset-uniformdeviate(branchrotation))];
	%C:=shortening[B, A rotatedaround(B, uniformdeviate(1)*branchrotation])];
	%D:=shortening[B, A rotatedaround(B, uniformdeviate(1)*branchrotation])];

    draw A--B withpen pencircle scaled thickness
		withcolor clr;

    if n>0:
        tree(B, C, n-1, thinning*thickness, lightening[clr, white]);
        tree(B, D, n-1, thinning*thickness, lightening[clr, white]);
    fi
enddef;
