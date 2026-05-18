let
    Fonte = Table.Combine({Faturamento_US}),
    #"Outras Colunas Removidas" = Table.SelectColumns(Fonte,{"NUMERO_PEDIDO"}),
    #"Duplicatas Removidas" = Table.Distinct(#"Outras Colunas Removidas"),
    #"Linhas Filtradas" = Table.SelectRows(#"Duplicatas Removidas", each [NUMERO_PEDIDO] <> null and [NUMERO_PEDIDO] <> "")
in
    #"Linhas Filtradas"