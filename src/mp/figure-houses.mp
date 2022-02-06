input house;

beginfig(0)
u:=2cm;

for i:=1 upto 50:
	addto currentpicture also house
		slanted (normaldeviate*.005u)
		scaled (.25u+normaldeviate*.05u)
		shifted (uniformdeviate(2u), uniformdeviate(3u));
endfor

endfig
