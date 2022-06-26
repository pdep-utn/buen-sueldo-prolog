/* Ejemplo que sirve para mostrar el uso del debugger */
sueldo(elektra, 80000).
sueldo(loki, 120000).
sueldo(thor, 70000).

trabaja(elektra, 6).
trabaja(thor, 5).
trabaja(loki, 8).

ganaBuenSueldo(Quien):-
    sueldo(Quien, Sueldo),
    Sueldo > 75000.

tieneTiempoLibre(Quien):-
    trabaja(Quien, Horas),
    Horas =< 8.

tieneUnBuenTrabajo(Quien):-
    ganaBuenSueldo(Quien),
    tieneTiempoLibre(Quien).

/*
    Si querés debuggear en Visual Studio Code podés descomentar este código
start :-
    tieneUnBuenTrabajo(Quien),
    write(Quien),
    fail.
*/

/*
   call: hay alguno?
     exit: sí, hay
     fail: no hay
   redo: sigo buscando

   call -->  +----------+  --> exit
             |   goal   |
   fail <--  +----------+ <-- redo
*/
