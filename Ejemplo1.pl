% This buffer is for notes you don't want to save.
% If you want to create a file, visit that file with C-x C-f,
% then enter the text in that file's own buffer.

dialog('ejemplo1',
       [ object        :=
           Ejemplo_,
         parts         :=
           [ Ejemplo_    :=
               dialog('ejemplo1'),
             LblTitulo   := label(lblTitulo, 'Titulo de la ventana'),
             BtnSalir    := button(btnSalir),
             BtnCalcular := button(btnCalcular),
             Text_item1  := text_item(text_item),
             Text_item2  := text_item(text_item),
             Text_item3  := text_item(text_item)
           ],
           
         modifications :=
           [ LblTitulo   :=
               [ font  := @courier_bold_12],
             BtnSalir  :=
               [ label := 'Salir'],
             BtnCalcular :=
               [ label := 'Calcular', default_button := @on],
             Text_item3  := [ label := 'Valor1'],
             Text_item2  := [ label  := 'Valor2', length := 26],
             Text_item1  := [ label  := 'Resultado', length := 22]
           ],
           
         layout :=
           [ area(LblTitulo, area(75, 15, 210, 18)),
             area(BtnSalir, area(171, 240, 80, 26)),
             area(BtnCalcular, area(11, 241, 80, 24)),
             area(Text_item3, area(21, 63, 230, 24)),
             area(Text_item2, area(18, 103, 230, 24)),
             area(Text_item1, area(19, 169, 228, 24))
           ],
           
         behaviour :=
           [ BtnSalir    := [ message := message(Ejemplo_, return, @nil)],
             BtnCalcular := [ message := message(@prolog, sumar, Text_item3?selection, Text_item2?selection, Text_item1)]
           ]
       ]).
       
%sumar(S1,S2,R):-atom_number(S1, S1c),atom_number(S2, S2c), Resultado is S1c + S2c ,send(R, selection, Resultado).
sumar(S1,S2,R):- send(R, selection, 'Texto').


inicio(Var):- make_dialog(D,ejemplo1),
        get(D, confirm_centered, R),
        send(D, destroy),
        Var = R.
