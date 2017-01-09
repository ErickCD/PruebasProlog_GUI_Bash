% Autor:
% Fecha: 07/01/2017

dos:- recorded(k, head(Suma)),
         number_chars(Suma, Lis),
         send(Suma, free),
         atom_codes(Sc, Lis),
         cont(Sc, '1').
         
inicio:- cont('1', '1'), dos, dos, dos, dos.

cont(X, X2):-write(X ), atom_number(X, Xc), atom_number(X2, X2c), Suma is Xc + X2c, recorda(k, head(Suma)), writeln(Suma).


%:- module(testmod1, [pred1/0, pred2/0, pred3/0, dyn1/1]).

%:- dynamic dyn1/1.

% pred1 :-
%         recorda(key1,head(1)),
%         writeln(record(key1,head(1))).
% 
% pred2 :-
%         recorded(key1,head(V)),
%         writeln(V).
% 
% pred3 :-
%         pred1,
%         pred2. %,
%         %pred4.
% 
% pred4 :- assert(dyn1(a)).