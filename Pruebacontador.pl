% Autor:
% Fecha: 07/01/2017

inicio:- cont('2', '1').

cont(X, X2):- atom_number(X, Xc), atom_number(X2, X2c), Suma is Xc + X2c, write(Suma).