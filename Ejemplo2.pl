% Autor:
% Fecha: 05/01/2017

create_window :-
new(D, dialog('Create a new window')),
send(D, append, new(Label, text_item(label, 'Untitled'))),
send(D, append, new(Class, menu(class, choice))),
send_list(Class, append,
[ class(window),
class(picture),
class(dialog),
class(browser),
class(view)
]),
send(D, append,
new(Width, slider(width, 100, 1000, 400))),
send(D, append,
new(Height, slider(height, 100, 1000, 200))),
send(D, append,
button(create,
message(@prolog, create_window,
Class?selection,
Label?selection,
Width?selection,
Height?selection))),
send(D, append,
button(cancel, message(D, destroy))),
send(D, open).

create_window(Class, Label, Width, Height) :-
get(Class, instance, Label, Window),
send(Window?frame, set, @default, @default, Width, Height),
send(Window, open).
