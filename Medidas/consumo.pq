CMM_adm =
    VAR pacientes_adm =
        CALCULATE(
            [Qtde Cadastrada],
            Pacientes[Tipo Ação] = "Administrativo",
            REMOVEFILTERS(_Calendario[Ano Mês Class])
        )

    VAR total_pacientes =
        CALCULATE(
            [Qtde Cadastrada],
            REMOVEFILTERS(_Calendario[Ano Mês Class])
        )

    RETURN
        [CMM_] * DIVIDE(pacientes_adm, total_pacientes, 0)
########################################################
CMM_aj = 
    VAR pacientes_aj =
        CALCULATE(
            [Qtde Cadastrada],
            Pacientes[Tipo Ação] = "Ação judicial",
            REMOVEFILTERS(_Calendario[Ano Mês Class])
        )

    VAR total_pacientes =
        CALCULATE(
            [Qtde Cadastrada],
            REMOVEFILTERS(_Calendario[Ano Mês Class])
        )

    RETURN
        [CMM_] * DIVIDE(pacientes_aj, total_pacientes, 0)