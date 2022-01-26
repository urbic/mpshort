
vardef graph@#(expr xmin_, xmax_, xstep_, xscale_, yscale_)=
	(for x_:=xmin_ step xstep_ until xmax_:
		(x_, @#(x_))--
	endfor
	(xmax_, @#(xmax_)))
	xscaled xscale_ yscaled yscale_
enddef;

vardef graphp@#(expr tmin_, tmax_, tstep_, xscale_, yscale_)=
	(for t_:=tmin_ step tstep_ until tmax_:
		@#(t_)..
	endfor
	@#(tmax_))
	xscaled xscale_ yscaled yscale_
enddef;

vardef polargraph@#(expr phimin_, phimax_, phistep_, xscale_, yscale_)=
	(for phi_:=phimin_ step phistep_ until phimax_:
		(@#(phi_)*cos(phi_), @#(phi_)*sin(phi_))..
	endfor
	(@#(phimax_)*cos(phimax_), @#(phimax_)*sin(phimax_)))
	xscaled xscale_ yscaled yscale_
enddef;

vardef cauchy@#(expr zo_, tmin_, tmax_, tstep_, xscale_, yscale_)=
	save z_, p_;
	path p_;
	pair z_;
	z_=zo_;
	if (tmin_>=0) and (tmax_>=0):
		for t_:=0 step eps until tmin_:
			z_:=z_+(@#(z_))*eps;
		endfor
		p_=z_;
		for t_:=tmin_ step eps until tmax_:
			z_:=z_+(@#(z_))*eps;
			if ((t_-tmin_) mod tstep_)=0:
				 p_:=p_..{@#(z_)}z_;
			fi
		endfor
	elseif (tmin_<0) and (tmax_<=0):
		for t_:=0 step -eps until tmin_:
			z_:=z_-eps*(@#(z_));
		endfor
		p_=z_;
		for t_:=tmin_ step eps until tmax_:
			z_:=z_+eps*(@#(z_));
			if ((t_-tmin_) mod tstep_)=0:
				 p_:=p_..{@#(z_)}z_;
			fi
		endfor
	fi
	
	
	p_ xscaled xscale_ yscaled yscale_
enddef;

endinput;

