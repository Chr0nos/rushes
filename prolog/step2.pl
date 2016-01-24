/* lieux, nationalite, cigar, boisson, animal, couleur
*/

agauche_de(A,B) :- A is (B - 1).
acote_de(A,B) :- agauche_de(A,B).
acote_de(A,B) :- agauche_de(B,A).

solve :-
Maisons = [
	maison(1, _, _, _, _, _),
	maison(2, _, _, _, _, _),
	maison(3, _, _, _, _, _),
	maison(4, _, _, _, _, _),
	maison(5, _, _, _, _, _),
],

member(maison(3, anglais, _, _, rouge, _) ,Maisons).

/*
member(maison(_, suedois, _, _, chiens, _) ,Maisons).
member(maison(_, danois, _, the, _, _) ,Maisons).

member(maison(_, anglais, _, _, rouge, _) ,Maisons).
member(maison(_, anglais, _, _, rouge, _) ,Maisons).
member(maison(_, anglais, _, _, rouge, _) ,Maisons).
member(maison(_, anglais, _, _, rouge, _) ,Maisons).

maison(_, anglais, _, _, _, rouge).
maison(_, suedois, _, _, chiens, _).
maison(_, danois, _, the, _, _).
maison(_, _, _, cafe, _, verte).
maison(_, _, pallmall, _, oiseaux, _).
maison(_, _, dunhill, _, _, jaune).
maison(3, _, _, lait, _, _).
maison(1, norvegien, _, _, _, _).
maison(_, _, bluemaster, biere, _, _).
maison(_, allemand, princes, _, _, _).

maison(A, _, _, _, chats, _) :- maison([A+1,A-1], _, blend, _, _, _).
*/
