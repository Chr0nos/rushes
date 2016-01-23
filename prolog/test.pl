parent(paul,jean). 
parent(jean,anne). 
parent(anne,marie).
homme(paul). 
homme(jean).

pere(X,Y) :- parent(X,Y), homme(X).

grand_pere(X,Y) :- pere(X,Z), parent(Z,Y).
