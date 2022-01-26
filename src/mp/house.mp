picture house;
house=nullpicture;

addto house contour (-.2, 1)--(1.2, 1)--(.5, 1.5)--cycle
	withcolor .5foreground;
addto house contour unitsquare
	withcolor .5red;
addto house contour unitsquare scaled .5 shifted (.25, .25)
	withcolor background;
addto house doublepath unitsquare scaled .5 shifted (.25, .25)
	withcolor foreground;
addto house doublepath (.25, .5)--(.75, .5)
	withcolor foreground;
addto house doublepath (.5, .25)--(.5, .75)
	withcolor foreground;
