main :-
    statistics(cputime,T1),
    modelo(  [A1, A2, A3, A4,A5]  ),
    imprime_lista(  [A1, A2, A3, A4,A5]  ),
    statistics(cputime ,T2),
    Buscar is T2 - T1,
    format('\n T1: ~f \t T2: ~f  msec', [T1, T2]),
    format('\n Tempo total: ~10f  msec', Buscar),
    fail.
main :-
        nl,
        write('Somente uma Resposta'),
        nl,
        write('Tente Novamente').
modelo([
    (Mochila_1, Nome_1, Mes_1, Jogo_1, Materia_1, Suco_1),
    (Mochila_2, Nome_2, Mes_2, Jogo_2, Materia_2, Suco_2),
    (Mochila_3, Nome_3, Mes_3, Jogo_3, Materia_3, Suco_3),
    (Mochila_4, Nome_4, Mes_4, Jogo_4, Materia_4, Suco_4),
    (Mochila_5, Nome_5, Mes_5, Jogo_5, Materia_5, Suco_5)
    ]):-
    mochila(Mochila_1),
    mochila(Mochila_2),
    mochila(Mochila_3),
    mochila(Mochila_4),
    mochila(Mochila_5),
    alldifferent([Mochila_1, Mochila_2, Mochila_3, Mochila_4, Mochila_5]),

    nome(Nome_1),
    nome(Nome_2),
    nome(Nome_3),
    nome(Nome_4),
    nome(Nome_5),
(Nome_5==lenin) ,
(Nome_1==otavio) ,
alldifferent([Nome_1, Nome_2, Nome_3, Nome_4, Nome_5]),
(
%%(Nome_5==will, Mochila_4==branca);
(Nome_4==will, Mochila_3==branca);
(Nome_3==will, Mochila_2==branca);
(Nome_2==will, Mochila_1==branca)
),
    mes(Mes_1),
    mes(Mes_2),
    mes(Mes_3),
    mes(Mes_4),
    mes(Mes_5),
    alldifferent([Mes_1, Mes_2, Mes_3, Mes_4, Mes_5]),
(
(Mes_5==maio, (Mochila_4==azul ; Mochila_3==azul ; Mochila_2==azul ; Mochila_1==azul));
(Mes_4==maio, (Mochila_3==azul ; Mochila_2==azul ; Mochila_1==azul));
(Mes_3==maio, (Mochila_2==azul ; Mochila_1==azul));
(Mes_2==maio, Mochila_1==azul)
),
(
(Mes_1==janeiro , Mes_2==setembro);
(Mes_2==janeiro , (Mes_1==setembro ; Mes_3==setembro));
(Mes_3==janeiro , (Mes_2==setembro ; Mes_4==setembro));
(Mes_4==janeiro , (Mes_3==setembro ; Mes_5==setembro));
(Mes_5==janeiro , Mes_4==setembro)
),
(
(Mochila_1==azul , Mes_1==janeiro);
(Mochila_2==azul , Mes_2==janeiro);
(Mochila_3==azul , Mes_3==janeiro);
(Mochila_4==azul , Mes_4==janeiro);
(Mochila_5==azul , Mes_5==janeiro)
),
        jogo(Jogo_1),
        jogo(Jogo_2),
        jogo(Jogo_3),
        jogo(Jogo_4),
        jogo(Jogo_5),

(Jogo_3 == jogo_da_forca),
alldifferent([Jogo_1, Jogo_2, Jogo_3, Jogo_4, Jogo_5]),
(Jogo_1==cubo_vermelho ; Jogo_5==cubo_vermelho),
(
(Jogo_1==prob_de_logica, Nome_2==will);
(Jogo_2==prob_de_logica, (Nome_1==will ; Nome_3==will));
%%%%(Jogo_3==prob_de_logica, (Nome_2==will ; Nome_4==will));
(Jogo_4==prob_de_logica, (Nome_3==will ; Nome_5==will));
(Jogo_5==prob_de_logica, Nome_4==will)
),
(
(Jogo_1==tres_ou_mais, Jogo_2==jogo_da_forca);
(Jogo_2==tres_ou_mais, (Jogo_1==jogo_da_forca ; Jogo_3==jogo_da_forca));
%%%%(Jogo_3==tres_ou_mais, (Jogo_2==jogo_da_forca ; Jogo_4==jogo_da_forca));
(Jogo_4==tres_ou_mais, (Jogo_3==jogo_da_forca ; Jogo_5==jogo_da_forca));
(Jogo_5==tres_ou_mais, Jogo_4==jogo_da_forca)
),
(
(Mochila_2==vermelha , Jogo_3==jogo_da_forca);
(Mochila_4==vermelha ,  Jogo_3==jogo_da_forca)
),
(
(Jogo_1==prob_de_logica , Mochila_2==amarela);
(Jogo_2==prob_de_logica , (Mochila_1==amarela ; Mochila_3==amarela));
(Jogo_3==prob_de_logica , (Mochila_2==amarela ; Mochila_4==amarela));
(Jogo_4==prob_de_logica , (Mochila_3==amarela ; Mochila_5==amarela));
(Jogo_5==prob_de_logica , Mochila_4==amarela)
),
(
(Mes_1==setembro , Jogo_2==cubo_vermelho);
(Mes_2==setembro , (Jogo_1==cubo_vermelho ; Jogo_3==cubo_vermelho));
(Mes_3==setembro , (Jogo_2==cubo_vermelho ; Jogo_4==cubo_vermelho));
(Mes_4==setembro , (Jogo_3==cubo_vermelho ; Jogo_5==cubo_vermelho));
(Mes_5==setembro , Jogo_4==cubo_vermelho)
),
        materia(Materia_1),
        materia(Materia_2),
        materia(Materia_3),
        materia(Materia_4),
        materia(Materia_5),
alldifferent([Materia_1, Materia_2, Materia_3, Materia_4, Materia_5]),
(
(Nome_1==joao , Materia_1==historia);
(Nome_2==joao , Materia_2==historia);
(Nome_3==joao , Materia_3==historia);
(Nome_4==joao , Materia_4==historia);
(Nome_5==joao , Materia_5==historia)
),
(
(Materia_1==matematica , Mes_1==dezembro);
(Materia_2==matematica , Mes_2==dezembro);
(Materia_3==matematica , Mes_3==dezembro);
(Materia_4==matematica , Mes_4==dezembro);
(Materia_5==matematica , Mes_5==dezembro)
),
        suco(Suco_1),
        suco(Suco_2),
        suco(Suco_3),
        suco(Suco_4),
        suco(Suco_5),
Suco_1==limao,
Suco_3==morango,
alldifferent([Suco_1, Suco_2, Suco_3, Suco_4, Suco_5]),
(
(Mes_1==setembro, Suco_2==laranja);
%%%(Mes_2==setembro, (Suco_1==laranja ; Suco_3==laranja));
(Mes_3==setembro, (Suco_2==laranja ; Suco_4==laranja));
(Mes_4==setembro, Suco_5==laranja);
(Mes_5==setembro, Suco_4==laranja)
),
(
%%%%%(Suco_1==uva , Jogo_1==prob_de_logica);
(Suco_2==uva , Jogo_2==prob_de_logica);
%%%%(Suco_3==uva , Jogo_3==prob_de_logica);
(Suco_4==uva , Jogo_4==prob_de_logica);
(Suco_5==uva , Jogo_5==prob_de_logica)
),
(
(Mochila_1==azul , (Suco_2==uva ;  Suco_4==uva ; Suco_5==uva));
(Mochila_2==azul , (Suco_4==uva ; Suco_5==uva));
(Mochila_3==azul , (Suco_4==uva ; Suco_5==uva));
(Mochila_4==azul , Suco_5==uva)
),
(
%%%(Materia_1==biologia , Suco_1==morango);
%%%(Materia_2==biologia , Suco_2==morango);
(Materia_3==biologia , Suco_3==morango)
%%%(Materia_4==biologia , Suco_4==morango);
%%%(Materia_5==biologia , Suco_5==morango)
),
(
(Materia_5==portugues , Suco_4==uva);
%%% (Materia_4==portugues , Suco_3==uva);
(Materia_3==portugues , Suco_2==uva)
%%%(Materia_2==portugues , Suco_1==uva)
),
(
%%%% (Materia_1==matematica, Suco_1==maracuja);
(Materia_2==matematica, Suco_2==maracuja);
%%% (Materia_3==matematica, Suco_3==maracuja);
(Materia_4==matematica, Suco_4==maracuja);
(Materia_5==matematica, Suco_5==maracuja)
),

nl,
write('Respostas Racha Cuca: \n')
.
        mochila(amarela).
        mochila(azul).
        mochila(branca).
        mochila(verde).
        mochila(vermelha).

        nome(denis).
        nome(joao).
        nome(lenin).
        nome(otavio).
        nome(will).

        mes(agosto).
        mes(dezembro).
        mes(janeiro).
        mes(maio).
        mes(setembro).

        jogo(tres_ou_mais).
        jogo(caca_palavra).
        jogo(cubo_vermelho).
        jogo(jogo_da_forca).
        jogo(prob_de_logica).

        materia(biologia).
        materia(geografia).
        materia(historia).
        materia(matematica).
        materia(portugues).

        suco(laranja).
        suco(limao).
        suco(maracuja).
        suco(morango).
        suco(uva).

  alldifferent([]).
  alldifferent([H|T]):- not(member(H,T)),
                        alldifferent(T).
  imprime_lista([]):- write('\n fim de imprime_lista \n').
  imprime_lista([H|T]):-
    write('\n'),
          write(H), write('\n'),
          imprime_lista(T).
