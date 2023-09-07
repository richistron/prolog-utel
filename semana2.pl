cuarto('num_1', 5).
cuarto('num_2', 2).
cuarto('num_3', 2).
cuarto('num_4', 1).
cuarto('num_5', 3).
cuarto('num_6', 5).
cuarto('num_7', 2).
cuarto('num_8', 2).
cuarto('num_9', 1).
cuarto('num_10', 3).


cuarto_con_tele('num_1', 0).
cuarto_con_tele('num_2', 1).
cuarto_con_tele('num_3', 0).
cuarto_con_tele('num_4', 1).
cuarto_con_tele('num_5', 1).
cuarto_con_tele('num_6', 1).
cuarto_con_tele('num_7', 1).
cuarto_con_tele('num_8', 0).
cuarto_con_tele('num_9', 0).
cuarto_con_tele('num_10', 1).

cuarto_con_alberca('num_1', 0).
cuarto_con_alberca('num_2', 1).
cuarto_con_alberca('num_3', 0).
cuarto_con_alberca('num_4', 1).
cuarto_con_alberca('num_5', 0).
cuarto_con_alberca('num_6', 0).
cuarto_con_alberca('num_7', 1).
cuarto_con_alberca('num_8', 0).
cuarto_con_alberca('num_9', 0).
cuarto_con_alberca('num_10', 1).

cuarto_doble(X) :- cuarto(X,Y), Y = 2.
cuarto_grande(X) :- cuarto(X,Y), Y > 2.
cuarto_chico(X) :- cuarto(X,Y), Y < 2.

cuarto_de_lujo(X) :- cuarto_con_tele(X,Y), Y > 0, cuarto_con_alberca(X,Z), Z > 0.
