femmes([anne, lisa, sylvie, julie, betty, eve, valerie]).
hommes([marc, jean, jules, leon, herve, loic, paul, gerard, luc, jacques]).
femme(X) :- femmes(L), member(X, L).
homme(X) :- hommes(L), member(X, L).
famille(marc, anne, [jean, jules, leon]).
famille(jules, lisa, [jacques]).
famille(leon, sylvie, [herve, julie]).
famille(luc, betty, [lisa, sylvie, loic, gerard]).
famille(loic, eve, [paul, valerie]).
famille(paul, julie, []).
mari_de(H,F) :- famille(H,F,_).
femme_de(F,H) :- famille(H,F,_).
enfant_de(E,P) :- famille(P, _, L), member(E, L).
enfant_de(E,P) :- famille(_, P, L), member(E, L).
ancetre_de(P,E) :- enfant_de(E, P).
ancetre_de(PEPE,E) :- enfant_de(E,P), ancetre_de(PEPE, P).
beaupere_de(BP, BF) :- homme(BP), mari_de(BF, F), enfant_de(F, BP).
beaupere_de(BP, BF) :- homme(BP), femme_de(BF, F), enfant_de(F, BP).
bellemere_de(BM, BF) :- femme(BM), mari_de(BF, F), emfant_de(F, BM).
bellemere_de(BM, BF) :- femme(BM), femme_de(BF, F), emfant_de(F, BM).
