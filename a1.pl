% Autor:
% Fecha: 04/01/2017

main:- new(D, dialog('Panel principal')),
       send(D, size, size(560, 400)),
       send(D, append, new(Menu, menu_bar)),
       send(Menu, append, new(Iniciar, popup(iniciar))),
       send_list(Iniciar, append,
                          [menu_item(iniciar, message(@prolog, panel1))
                          ]),
       send(D, open, point(200,200)).

panel1:- new(D, dialog('Panel secundario')),
         new(Txt1, menu('Texto 1')),
         send_list(Txt1, append, [si, no]),
         new(Txt2, menu('Texto 2')),
         send_list(Txt2, append, [si, no]),

         send(D, append(Txt1)),
         send(D, append, (Txt2)),
         
         new(B, button('salir',and(

                message(@prolog, salir)))),
         send(D, append,B),
         send(D, open, point(350,350)).
         
salir:- new(D, dialog('Salir')),
        
        new(@boton, button('Cerrar',
        and(
        message(D, destroy),
        message(D, free),
        message(@boton, free)))),
        
        send(D, append(@boton)),
        
        send(D, open).