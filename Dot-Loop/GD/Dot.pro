domains
	titik=point(x,y)
	x=integer
	y=integer
	
predicates
	nondeterm cekTitik(titik,titik)
	nondeterm go

clauses
	go:- 	write("Masukan X1 : "),readint(X1),nl,
		write("Masukan Y1 : "),readint(Y1),nl,
		write("Masukan X2 : "),readint(X2),nl,
		write("Masukan Y2 : "),readint(Y2),nl,
		cekTitik(point(X1,Y1),point(X2,Y2)).
	cekTitik(point(X1,Y1),point(X2,Y2)):- Y1=Y2,X2>X1, Panjang=X2-X1, write("Panjang garis : ",Panjang).
		cekTitik(point(X1,_),point(X2,_)):-X2<X1,write("X2 Harus lebih besar dari X1"),nl,go.
		cekTitik(point(X1,_),point(X2,_)):-X2=X1,write("X2 dan X1 tidak boleh sama"),nl,go.
		cekTitik(point(_,Y1),point(_,Y2)):-Y1<>Y2,write("Y1 dan Y2 tidak boleh berbeda"),nl,go.
		
goal 
	go.