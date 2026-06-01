Ressarcimento Estimado sobre Distribuições Históricas = 
CALCULATE(
    [Valor Total Distribuido]*0.8,
    FILTER(
        ALL(_Calendario),
        _Calendario[Ano] >= 2018 && _Calendario[Ano]<=2025
    ),
    FILTER(
        ALL('_Lista de medicamentos'),
        '_Lista de medicamentos'[Classe/Programa/Tema 1234] <> "Sem registro ANVISA"
    )
)
#=====================================================================================
Valor enviado ao MS = 
CALCULATE(
    SUM(Ressarcimentos_AJ[Valor]),
    Ressarcimentos_AJ[Status] = "Enviado"
)
#=====================================================================================
Distribuição Histórica 2018-2025 = 
CALCULATE(
    [Valor Total Distribuido],
    FILTER(
        ALL(_Calendario),
        _Calendario[Ano] >=2018 && _Calendario[Ano]<=2025
    )
)
#=====================================================================================
Ressarcimento Estimado sobre Distribuições Históricas = 
CALCULATE(
    [Valor Total Distribuido]*0.8,
    FILTER(
        ALL(_Calendario),
        _Calendario[Ano] >= 2018 && _Calendario[Ano]<=2025
    ),
    FILTER(
        ALL('_Lista de medicamentos'),
        '_Lista de medicamentos'[Classe/Programa/Tema 1234] <> "Sem registro ANVISA"
    )
)
#=====================================================================================
Fator Ressarcimento = 
DIVIDE(
    [Ressarcimento Estimado sobre Distribuições Históricas],
    [Distribuição Histórica 2018-2025],
    ""
)
#=====================================================================================
Ressarcido Projetado Mensal = 
IF(
    MAX(_Calendario[Data]) > TODAY(),
    [Média Mensal Últimos 12 Meses]*0.8,
    BLANK()
)
#=====================================================================================
Ressarcimento projetado 12 meses = 
[Ressarcido Projetado Mensal] * 12
#=====================================================================================
Ressarcimento Projetado Acumulado = 
VAR DataAtual =
    MAX(_Calendario[Data])

VAR InicioProjecao =
    EOMONTH(TODAY(),0) + 1

VAR MesesDecorridos =
    DATEDIFF(
        InicioProjecao,
        DataAtual,
        MONTH
    ) + 1

RETURN
IF(
    DataAtual >= InicioProjecao,
    [Média Mensal Últimos 12 Meses] * 0.8 * MesesDecorridos,
    BLANK()
)

#=====================================================================================
Valor Total enviado ao MS = 
CALCULATE(
    SUM(Ressarcimentos_AJ[Valor]),
    Ressarcimentos_AJ[Status] = "Enviado",
    ALL(_Calendario)
)