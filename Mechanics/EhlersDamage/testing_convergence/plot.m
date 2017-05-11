	close all
	clear all

	%set(0,"defaultaxesfontname","TimesNewRoman");
	%set(0,"defaultaxesfontsize",8);
	%set(0,"defaulttextfontname","TimesNewRoman");
	%set(0,"defaulttextfontsize",8);

	% medium mesh
	for k = 1:3
	nome=sprintf('coarse_left%d.csv', (k-1))
	dati(k) = importdata(nome);
	aa=size(dati(k).data(:,1));
	dimension(k)=aa(1,1);
	%take all values or less of them
	perc(k)=1.0;
	fin(k)=round(perc(k)*dimension(k));

	%Storing all different variables
	%ii=1;
	%while ii<fin(k)
	for ii=1:fin(k)
	fx(ii,k)=dati(k).data(ii,1);
	fy(ii,k)=dati(k).data(ii,2);
	dam(ii,k)=dati(k).data(ii,3);
	dx(ii,k)=dati(k).data(ii,4);
	dy(ii,k)=dati(k).data(ii,5);
	exx(ii,k)=dati(k).data(ii,6);
	exy(ii,k)=dati(k).data(ii,7);
	eyy(ii,k)=dati(k).data(ii,8);
	ezz(ii,k)=dati(k).data(ii,9);
	sxx(ii,k)=dati(k).data(ii,10);
	sxy(ii,k)=dati(k).data(ii,11);
	syy(ii,k)=dati(k).data(ii,12);
	szz(ii,k)=dati(k).data(ii,13);
	vtkpt(ii,k)=dati(k).data(ii,14);
	time(ii,k)=dati(k).data(ii,15);
	x0(ii,k)=dati(k).data(ii,16);
	y0(ii,k)=dati(k).data(ii,17);
	z0(ii,k)=dati(k).data(ii,18);

	%Compute values of sigma
	F(k)=0;
	for jj=1:(size(syy(:,k)))
	F(k)=F(k)+syy(jj,k)*0.45*0.1/100;
	end

	%Update counter
	%ii=ii+1;
	end
	end

	%Plot variables
	mks=6;
	lw=1;
	%lw2=4;
	% Zoom reg.nnreg.homogen
	figure()
	plot(dx(:,1),fx(:,1),'k-d','MarkerSize',mks,'LineWidth',lw)
	hold on

	legend('Ehlers-Damage - Medium','Fine Eh','Lower bound','Upper bound','Grassl and Jirasek - Fine','Location','Northeast');
	xlabel({'Displacement [mm]'},'FontSize',8');
	ylabel('Force [kN]','FontSize',8);

	%text (5, 35, ['Target P1']);

	%grid on
	%axis([0.0 1 0.0 1.6])
	legend boxoff;

	print('comp_traction_beam', '-dpdf')
