agauche_de(A,B) :- A is (B - 1).
acote_de(A,B) :- agauche_de(A,B).
acote_de(A,B) :- agauche_de(B,A).

solve(Maisons) :-
Maisons = [
	maison(1, _, _, _, _, _),
	maison(2, _, _, _, _, _),
	maison(3, _, _, _, _, _),
	maison(4, _, _, _, _, _),
	maison(5, _, _, _, _, _)
],

member(maison(_, anglais, _, _, _, rouge) ,Maisons),
member(maison(_, suedois, _, _, chiens, _) ,Maisons),
member(maison(_, danois, _, the, _, _) ,Maisons),
member(maison(X, _, _, cafe, _, verte) ,Maisons),
member(maison(Y, _, _, _, _, blanche) ,Maisons),
agauche_de(X,Y),
member(maison(_, _, pallmall, _, oiseaux, _) ,Maisons),
member(maison(D, _, dunhill, _, _, jaune) ,Maisons),
member(maison(3, _, _, lait, _, _) ,Maisons),
member(maison(1, norvegien, _, _, _, _) ,Maisons),
member(maison(N, _, blend, _, _, _) ,Maisons),
member(maison(M, _, _, _, chats, _) ,Maisons),
acote_de(N,M),
member(maison(C, _, _, _, cheval, _) ,Maisons),
acote_de(C,D),
member(maison(_, _, bluemaster, biere, _, _) ,Maisons),
member(maison(_, allemand, prince, _, _, _) ,Maisons),
member(maison(W, _, _, _, _, bleue) ,Maisons),
member(maison(Q, norvegien, _, _, _, _), Maisons),
acote_de(W,Q),
member(maison(_, _, _, _, poisson, _), Maisons).
poisson(X) :- member(maison(_, X, _, _, poisson, _), L), solve(L).
