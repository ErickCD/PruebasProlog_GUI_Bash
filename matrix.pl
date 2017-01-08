% Autor:
% Fecha: 07/01/2017

:- pce_begin_class(matrix(width, height), vector, "Two-dimensional array").
variable(width, int, get, "Width of the matrix").
variable(height, int, get, "Height of the matrix").

initialise(M, Width:int, Height:int) :->
"Create matrix fom width and and height"::
send(M, send_super, initialise),
send(M, slot, width, Width),
send(M, slot, height, Height),
Size is Width * Height,
send(M, fill, @nil, 1, Size).

element(M, X:int, Y:int, Value:any) :->
"Set element at X-Y to Value"::
get(M, width, W), get(M, height, H),
between(1, W, X),
between(1, H, Y),
Location is X + (Y * (W-1)),
send(M, send_super, element, Location, Value).

:- pce_end_class.

