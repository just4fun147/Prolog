domains
	list=symbol*
	element=symbol
predicates
	nondeterm anggota(element,list)
clauses
	anggota(X,[X|_]).
	anggota(X,[_|T]) :- anggota(X,T).
goal
	anggota("Lia",["Meta","Truly","Lia","Eva","Elvina"]).