homme(X) :- member(X, [marc,jules,jean,luc,leon,loic,gerard,jacques,herve,paul]).
femme(X) :- member(X, [anne,betty,sylvie,lisa,julie,valerie,eve]).

mari_de(X,Y) :- member((X,Y), [(anne,marc),(betty,luc),(lisa,jules),(eve,loic),(paul,julie)]).
femme_de(X,Y) :- mari_de(Y,X).

enfant_de(X,Y) :- member((X,Y), [(marc,jules),(marc,leon),(marc,jean)]).
enfant_de(X,Y) :- member((X,Y), [(anne,jules),(anne,leon),(anne,jean)]).
enfant_de(X,Y) :- member((X,Y), [(jules,jacques),(jules,lisa)]).
enfant_de(X,Y) :- member((X,Y), [(leon,herve),(sylvie,herve)]).


enfant_de(X,Y) :- member((X,Y), [(luc,gerard),(betty,gerard)]).
enfant_de(X,Y) :- member((X,Y), [(luc,loic),(betty,loic)]).
enfant_de(X,Y) :- member((X,Y), [(luc,lisa),(betty,lisa)]).
enfant_de(X,Y) :- member((X,Y), [(jules,jacques),(lisa,jacques)]).

ancetre_de(X,Y) :- enfant_de(Y,X).
