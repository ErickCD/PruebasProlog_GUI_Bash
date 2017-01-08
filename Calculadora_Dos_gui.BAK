% Autor:
% Fecha: 06/01/2017

main:- new(Dialog, dialog('Interfaz de suma')),
   %Etiqueta
    new(Etiqueta, label(nombre, 'Suma de dos numeros: ')),
    
    %Cajas de texto
    new(Text1, text_item('Ingrese el primer numero')),
    new(Text2, text_item('Ingrese el segundo numero numero')),
    new(Text3, text_item('Resultado')),
    
    %Botones
    new(Sumar, button('Sumar', message(@prolog, suma,Text1?selection,Text2?selection,Text3))),
    new(Salir, button('Salir', message(Dialog, destroy))),


    send(Dialog, append, Etiqueta),
    send(Dialog, append, Text1),
    send(Dialog, append, Text2),
    send(Dialog, append, Text3),
    send(Dialog, append, Sumar),
    send(Dialog, append, Salir),

    send(Dialog, open).
    
suma(N1, N2, R):- atom_number(N1,N1c), atom_number(N2, N2c), Resultado is N1c + N2c, send(R, selection, Resultado).