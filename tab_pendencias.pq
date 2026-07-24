Pendências = 
FILTER(
    ADDCOLUMNS(
        SUMMARIZE(
            FILTER(
                'pendencias de faturamento',
                'pendencias de faturamento'[Diferença] < 0
            ),
            '_Lista de medicamentos'[Medicamento],
            'pendencias de faturamento'[NF],
            'pendencias de faturamento'[Pedido-SEI],
            'pendencias de faturamento'[LISTA_MEDICAMENTO],
            'pendencias de faturamento'[Data],
            'pendencias de faturamento'[Unidade],
            'pendencias de faturamento'[Pedido Novo],
            'pendencias de faturamento'[Status],
            '_Lista de medicamentos'[FATOR EMBALAGEM]
        ),
        "_Cobertura", [Cobertura Estoque (dias)],
        "_pendencias", 'pendencias de faturamento'[Soma de Diferença],
        "_MOD_PENDENCIA", -1 * 'pendencias de faturamento'[Soma de Diferença],
        "Cobertura ADM", [Cobertura Estoque em dias adm],
        "Cobertura AJ", [Cobertura Estoque em dias aj],

        "_MENOR_FATOR",
            IF(
                -1 * 'pendencias de faturamento'[Soma de Diferença]
                    < '_Lista de medicamentos'[FATOR EMBALAGEM],
                "SIM",
                "NÃO"
            )
    ),
    [_Cobertura] > 0
)