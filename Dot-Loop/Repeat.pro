predicates
	nondeterm repeat(integer,integer,integer)
	nondeterm repeataksi(integer,integer,integer,integer)
	nondeterm until(integer,integer,integer,integer)
	nondeterm go

clauses
	go:-
		write("Batas Awal : "),readint(A),
		write("Batas Akhr : "),readint(Ak),
		write("Kelipatan: "),readint(K),
		Awal=A,Next=K,Akhir=Ak,
		repeat(Awal,Next,Akhir).
	
	repeat(Awal,Next,Akhir):-
		Mulai=0,
		repeataksi(Mulai,Awal,Next,Akhir).
		
	repeataksi(I,Cek,Next,Akhir):-
		I1=I+Next,
		until(I1,Cek,Next,Akhir).
	
	until(I1,Cek,Next,Akhir):-
		I1<Akhir,
		I1>Cek,
		write(I1),nl,
		repeatAksi(I1,Cek,Next,Akhir).
	
	until(I1,Cek,Next,Akhir):-
		I1<Akhir,
		I1<Cek,
		write(I1),nl,
		repeatAksi(I1,Cek,Next,Akhir).
	
	until(I1,Cek,Next,Akhir):-
		I1=Akhir,
		I1>Cek,
		write(I1),nl,
		repeatAksi(I1,Cek,Next,Akhir).
		
	until(I1,Cek,_,Akhir):-
		I1>Cek,
		I1>Akhir.

goal
	go.