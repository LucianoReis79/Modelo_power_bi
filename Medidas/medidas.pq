
# Medida para calcular o valor de ressarcimento com base no custo anual e na classe/programa do medicamento.
Ressarcimento = 
    VAR dados =
    ADDCOLUMNS(
        SUMMARIZE(
            FILTER(Pacientes, not ISBLANK(Pacientes[Medicamento]) && RELATED('_Lista de medicamentos'[Classe/Programa/Tema 1234]) <> "Sem registro ANVISA"),
            '_Lista de medicamentos'[Medicamento], Pacientes[Interessado], 
            '_Lista de medicamentos'[Classe/Programa/Tema 1234]
        ),
        "@custo_unitário", [Custo unitário],
        "@cmm", [Qtde Cadastrada (2)],
        "@custo_anual",[Custo unitário]*[Qtde Cadastrada (2)]*12,
        "@valor_ressarcimento", 
        VAR custo_anual = [Custo unitário]*[Qtde Cadastrada (2)]*12
        VAR programa = '_Lista de medicamentos'[Classe/Programa/Tema 1234]
        RETURN
        SWITCH(
            TRUE(),
            programa = "Oncológico", custo_anual *0.8,
            programa IN {"CEAF 1A - MS", "CEAF 1B - MS", "Estratégico"}, custo_anual,
            programa = "Não incorporado", custo_anual *0.65,
            0
        )
    )
    var corte = 200000
    RETURN
    FILTER(dados, [@custo_anual] > corte)
#==================================================================================================================================
# Retorna a cobertura de estoque em dias para os medicamentos com pendências de faturamento, considerando apenas aqueles com 
# diferença negativa (pendências) e que possuem cobertura de estoque maior que zero.
Pendências=
FILTER(
        ADDCOLUMNS(
                SUMMARIZE(
                        FILTER('pendencias de faturamento', 'pendencias de faturamento'[Diferença] < 0) ,
                        '_Lista de medicamentos'[Medicamento], 'pendencias de faturamento'[NF], 'pendencias de faturamento'[LISTA_MEDICAMENTO], 'pendencias de faturamento'[Data]
                ),
                        "_Cobertura", [Cobertura Estoque (dias)],
                        "_pendencias", 'pendencias de faturamento'[Soma de Diferença],
                        "_fora FE", [Fora do FE]
                        
        ),
        [_Cobertura] > 0
)