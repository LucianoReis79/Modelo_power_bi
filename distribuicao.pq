let
    Fonte = Oracle.Database("10.17.1.30:1521/pdbprod01.ses.ba", [HierarchicalNavigation=true, Query="SELECT * FROM AFSESAB.VW_SIGAF_REL_DISTRIBUICAO#(lf)WHERE DATA_DISTRIBUICAO>= TIMESTAMP '2023-01-01 00:00:00.000000'"]),
    #"Tipo Alterado2" = Table.TransformColumnTypes(Fonte,{{"NUMERO_DISTRIBUICAO", type text}, {"NUMERO_PEDIDO", Int64.Type}, {"UNIDADE_ORIGEM", type text}, {"UNIDADE_DESTINO", type text}, {"DATA_DISTRIBUICAO", type date}, {"QUANTIDADE", Int64.Type}, {"VALOR_UNITARIO", type number}, {"DATA_VENCIMENTO", type date}, {"VALOR_TOTAL", type number}, {"MEDICAMENTO", type text}, {"LOTE", type text}}),
    De = List.Buffer(Dicionário[De]),
    Para = List.Buffer(Dicionário[Para]),
    Nome_Corrigido = Table.TransformColumns(#"Tipo Alterado2", {"MEDICAMENTO", each Fn_De_Para(_, De , Para), type text}), 
    
    
    
    #"Colunas Removidas" = Table.RemoveColumns(Nome_Corrigido,{"UNIDADE_ORIGEM"}),
    #"Personalização Adicionada" = Table.AddColumn(#"Colunas Removidas", "Tipo", each "Distibuição"),
    #"Tipo Alterado" = Table.TransformColumnTypes(#"Personalização Adicionada",{{"Tipo", type text}}),
    #"Consultas Mescladas" = Table.NestedJoin(#"Tipo Alterado", {"NUMERO_DISTRIBUICAO"}, #"pendencias de faturamento", {"NF"}, "pendencias de faturamento", JoinKind.LeftOuter),
    #"pendencias de faturamento Expandido" = Table.ExpandTableColumn(#"Consultas Mescladas", "pendencias de faturamento", {"Programa de Saúde"}, {"Programa de Saúde"}),
    #"Linhas Filtradas" = Table.SelectRows(#"pendencias de faturamento Expandido", each ([Programa de Saúde] <> null)),
    #"Colunas Renomeadas" = Table.RenameColumns(#"Linhas Filtradas",{{"DATA_DISTRIBUICAO", "Data"}, {"UNIDADE_DESTINO", "Unidade"}}),
    #"Duplicatas Removidas" = Table.Distinct(#"Colunas Renomeadas", {"NUMERO_DISTRIBUICAO", "NUMERO_PEDIDO", "Unidade", "Data", "QUANTIDADE", "MEDICAMENTO"})
in
    #"Duplicatas Removidas"