/* lieux, nationalite, cigar, boisson, animal, couleur, a cote de
*/
maisons([1, 2, 3, 4, 5],
	[anglais, suedois, danois, norvegien, allemand],
	[pallmall, dunhill, bluemaster, princes, blend],
	[the, cafe, lait, biere, eau],
	[chiens, oiseaux, poisson, cheval, chats],
	[rouge, verte, jaune, bleue, blanche]).

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
