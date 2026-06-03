
# Medida para calcular o valor de ressarcimento com base no custo anual e na classe/programa do medicamento.
Ressarcimento = 
VAR dados =
ADDCOLUMNS(
    SUMMARIZE(
        FILTER(Pacientes, not ISBLANK(Pacientes[Medicamento]) && RELATED('_Lista de medicamentos'[Classe/Programa/Tema 1234]) <> "Sem registro ANVISA"),
        Interessados[Interessado], '_Lista de medicamentos'[Medicamento],
        '_Lista de medicamentos'[Classe/Programa/Tema 1234],
        Pacientes[SEI]
        
    ),
    "@custo_unitário", [Custo unitário],
    "@cmm", [Qtde Cadastrada (2)],
    "@custo_anual",[Custo anual],
    "status", CALCULATE(SELECTEDVALUE(Pacientes[Status])),
    "@Valor solicitado", CALCULATE(SUM(Ressarcimentos_AJ[Valor])),
    
    "@valor_ressarcimento", 
    VAR custo_anual = [Custo anual]
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
FILTER(dados, [@custo_anual] > corte && '_Lista de medicamentos'[Medicamento] <> "")
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