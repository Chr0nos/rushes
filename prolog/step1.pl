/* hommes et femmes */
homme(X) :- member(X, [marc,jules,jean,luc,leon,loic,gerard,jacques,herve,paul]).
femme(X) :- member(X, [anne,betty,sylvie,lisa,julie,valerie,eve]).

/* epoux */
mari_de(X,Y) :- member((X,Y), [(anne,marc),(betty,luc),(lisa,jules),(eve,loic),(paul,julie)]).
femme_de(X,Y) :- mari_de(Y,X).

/* enfants de marc et anne */
enfant_de(X,Y) :- member((X,Y), [(marc,jules),(marc,leon),(marc,jean)]).
enfant_de(X,Y) :- member((X,Y), [(anne,jules),(anne,leon),(anne,jean)]).

/* enfants de jules et lisa */
enfant_de(X,Y) :- member((X,Y), [(jules,jacques),(lisa,jacques)]).
enfant_de(X,Y) :- member((X,Y), [(leon,herve),(sylvie,herve)]).

/* enfants de leon et sylvie */
enfant_de(X,Y) :- member((X,Y), [(leon,herve),(leon,julie),(sylvie,herve),(sylvie,julie)]).

/* enfants de loic et eve */
enfant_de(X,Y) :- member((X,Y), [(loic,paul),(loic,valerie)]).
enfant_de(X,Y) :- member((X,Y), [(eve,paul),(eve,valerie)]).

/* enfants de luc et betty */
enfant_de(X,Y) :- member((X,Y), [(luc,gerard),(betty,gerard)]).
enfant_de(X,Y) :- member((X,Y), [(luc,loic),(betty,loic)]).
enfant_de(X,Y) :- member((X,Y), [(luc,lisa),(betty,lisa)]).

/* belle famille */
bellemere_de(X,Y) :- member((X,Y), [(anne,lisa),(anne,sylvie),(sylvie,paul),(betty,eve),(eve,julie)]).
beaupere_de(X,Y) :- member((X,Y), [(marc,lisa),(marc,sylvie),(leon,paul),(luc,eve),(loic,julie)]).
