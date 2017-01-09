% Autor: Erick Clair
% Fecha: 07/01/2017

% Inicia el programa y se envian los valores al: cont("Valor a incrementar", "cuanto va a incrementar")
inicio:- cont('1', '1'), dos, dos, dos, dos.

%con recorded, recuerda a la variable "Suma"
dos:- recorded(k, head(Suma)),
         %Transforma a suma tipo number a un arreglo de caracteres
         number_chars(Suma, Lis),
         %Libera el valor recordado de Suma
         send(Suma, free),
         %Transforma la lista de caracteres en un tipo string
         atom_codes(Sc, Lis),
         %Envia a cont("valor recordado", "Cuanto va a incrementar")
         cont(Sc, '1').

%Resive dos parametros, el numero que va a incrementar y cuanto o va a incrementar
%Transforma las variables en numeros, las suma en la variable "Suma" y lo escribe
cont(X, X2):-write(X ), atom_number(X, Xc), atom_number(X2, X2c), Suma is Xc + X2c, recorda(k, head(Suma)), writeln(Suma).
