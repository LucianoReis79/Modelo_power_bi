let
    Fonte = Entradas,
    #"Outras Colunas Removidas" = Table.SelectColumns(Fonte,{"Lote"}),
    #"Duplicatas Removidas" = Table.Distinct(#"Outras Colunas Removidas")
in
    #"Duplicatas Removidas"