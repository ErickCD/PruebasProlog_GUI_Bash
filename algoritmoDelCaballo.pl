% Autor:
% Fecha: 04/01/2017

main:- new(D, dialog('Eres un caballo')),
       send(D, size, size(560, 400)),
       send(D, append, new(Menu, menu_bar)),
       send(Menu, append, new(Iniciar, popup(iniciar))),
       send_list(Iniciar, append,
                          [menu_item(iniciar, message(@prolog, panel1))
                          ]),
       send(D, open, point(200,200)).

panel1:- new(D, dialog('¿Eres un caballo?')),
         new(Txt1, menu('')),
         send_list(Txt1, append, [si]),
         new(Txt2, menu('')),
         send_list(Txt2, append, [no]),
         new(Txt3, menu('')),
         send_list(Txt3, append, [tv]),

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