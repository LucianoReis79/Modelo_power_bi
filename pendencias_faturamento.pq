let
    Fonte = Oracle.Database("10.17.1.30:1521/pdbprod01.ses.ba", [HierarchicalNavigation=true]){[Schema="AFSESAB"]}[Data]{[Name="VW_SIGAF_REL_PENDENCIAS"]}[Data],
    TipoAlterado = Table.TransformColumnTypes(Fonte,{{"numero_pedido", Int64.Type}, {"numero_distribuicao", type text}, {"unidade_saude", type text}, {"programa_saude", type text}, {"data_pedido", type date}, {"data_distribuicao", type date}, {"periodo", type text}, {"medicamento_item", type text}, {"consumo_medio_mensal", Int64.Type}, {"qtd_pedida", Int64.Type}, {"qtd_autorizada", Int64.Type}, {"qtd_faturada", Int64.Type}, {"diferenca", Int64.Type}}),
    #"Texto Limpo1" = Table.TransformColumns(TipoAlterado,{{"medicamento_item", Text.Clean, type text}}),
    #"Texto Aparado1" = Table.TransformColumns(#"Texto Limpo1",{{"medicamento_item", Text.Trim, type text}}),
    #"Texto em Maiúscula" = Table.TransformColumns(#"Texto Aparado1",{{"medicamento_item", Text.Upper, type text}}),
    #"Linhas Filtradas" = Table.SelectRows(#"Texto em Maiúscula", each ([programa_saude] = "AÇÃO JUDICIAL" or [programa_saude] = "AÇÃO JUDICIAL TERMOLÁBIL" or [programa_saude] = "CAJ - ADMINISTRATIVO")),
    #"Linhas Filtradas1" = Table.SelectRows(#"Linhas Filtradas", each [data_distribuicao] > #date(2018, 1, 1)),
    De = List.Buffer(Dicionário[De]),
    Para = List.Buffer(Dicionário[Para]),
    Nome_Corrigido = Table.TransformColumns(#"Linhas Filtradas1", {"medicamento_item", each Fn_De_Para(_, De , Para), type text}), 
    
    
    #"Colunas Removidas" = Table.RemoveColumns(Nome_Corrigido,{"periodo", "consumo_medio_mensal", "data_pedido"}),
    #"Colunas Renomeadas" = Table.RenameColumns(#"Colunas Removidas",{{"medicamento_item", "Medicamento"}}),
    #"Linhas Classificadas" = Table.Sort(#"Colunas Renomeadas",{{"data_distribuicao", Order.Descending}}),
    #"Personalização Adicionada" = Table.AddColumn(#"Linhas Classificadas", "Personalizar", each Number.Abs([#"diferenca"])+[#"qtd_faturada"]),
    #"Colunas Renomeadas1" = Table.RenameColumns(#"Personalização Adicionada",{{"Personalizar", "Demanda real"}}),
    #"Tipo Alterado1" = Table.TransformColumnTypes(#"Colunas Renomeadas1",{{"Demanda real", Int64.Type}}),
    #"Colunas Renomeadas2" = Table.RenameColumns(#"Tipo Alterado1",{{"numero_distribuicao", "Nº Distribuição"}, {"unidade_saude", "Unidade de Saúde"}, {"programa_saude", "Programa de Saúde"}, {"data_distribuicao", "Data Distribuição"}, {"qtd_pedida", "Qtd. Pedida"}, {"qtd_autorizada", "Qtd. Autorizada"}, {"qtd_faturada", "Qtd. Faturada"}, {"diferenca", "Diferença"}, {"numero_pedido", "Pedido"}}),
    #"Tipo Alterado" = Table.TransformColumnTypes(#"Colunas Renomeadas2",{{"Pedido", type text}}),
    #"Texto Limpo" = Table.TransformColumns(#"Tipo Alterado",{{"Medicamento", Text.Clean, type text}, {"Programa de Saúde", Text.Clean, type text}, {"Unidade de Saúde", Text.Clean, type text}, {"Nº Distribuição", Text.Clean, type text}, {"Pedido", Text.Clean, type text}}),
    #"Tipo Alterado2" = Table.TransformColumnTypes(#"Texto Limpo",{{"Data Distribuição", type date}}),
    #"Texto Aparado" = Table.TransformColumns(Table.TransformColumnTypes(#"Tipo Alterado2", {{"Data Distribuição", type text}}, "pt-BR"),{{"Medicamento", Text.Trim, type text}, {"Data Distribuição", Text.Trim, type text}, {"Programa de Saúde", Text.Trim, type text}, {"Unidade de Saúde", Text.Trim, type text}, {"Nº Distribuição", Text.Trim, type text}, {"Pedido", Text.Trim, type text}}),
    #"Tipo Alterado3" = Table.TransformColumnTypes(#"Texto Aparado",{{"Data Distribuição", type date}}),
    #"Colunas Renomeadas3" = Table.RenameColumns(#"Tipo Alterado3",{{"Unidade de Saúde", "Unidade"}, {"Data Distribuição", "Data"}, {"Qtd. Faturada", "Quantidade"}, {"Nº Distribuição", "NF"}, {"Pedido", "Pedido-SEI"}}),
    #"Duplicatas Removidas" = Table.Distinct(#"Colunas Renomeadas3", {"Pedido-SEI", "NF", "Unidade", "Medicamento"})
in
    #"Duplicatas Removidas"