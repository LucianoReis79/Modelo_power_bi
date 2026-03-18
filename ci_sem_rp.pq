let

    Fonte = Oracle.Database("10.17.1.30:1521/pdbprod01.ses.ba", [HierarchicalNavigation=true]){[Schema="AFSESAB"]}[Data]{[Name="VW_SIGAF_REL_CI_COM_MEDICAMENTOS"]}[Data],
    #"Linhas Filtradas4" = Table.SelectRows(Fonte, each ([status_ci] = "Ativo") and ([assunto_ci] = "Solicitação de medicamentos sem RP Ativo") and ([origem_ci] = "Coordenação")),
    TipoAlterado = Table.TransformColumnTypes(#"Linhas Filtradas4",{{"numero_ci", type text}, {"data_ci", type date}, {"destino", type text}, {"origem_ci", type text}, {"servidor", type text}, {"assunto_ci", type text}, {"status_ci", type text}, {"numero_processo", type text}, {"descricao", type text}, {"nom_medicamento", type text}, {"quantidade", Int64.Type}}),
    
    De = List.Buffer(Dicionário[De]),
    Para = List.Buffer(Dicionário[Para]),
    Nome_Corrigido = Table.TransformColumns(TipoAlterado, {"nom_medicamento", each Fn_De_Para(_, De , Para), type text}),
    #"Colunas Removidas" = Table.RemoveColumns(Nome_Corrigido,{"destino", "origem_ci", "assunto_ci","descricao"}),
    #"Linhas Filtradas" = Table.SelectRows(#"Colunas Removidas", each ([#"numero_ci"] <> " * ")),
    #"Erros Substituídos" = Table.ReplaceErrorValues(#"Linhas Filtradas", {{"quantidade", 0}}),
    #"Erros Removidos" = Table.RemoveRowsWithErrors(#"Erros Substituídos", {"nom_medicamento"}),
    #"Colunas Renomeadas" = Table.RenameColumns(#"Erros Removidos",{{"numero_ci", "Nº CI"}, {"data_ci", "Data CI"}, {"numero_processo", "Processo SEI"}, {"nom_medicamento", "Medicamento"}, {"quantidade", "Quantidade"}}),
    Personalizar1 = Table.AddColumn(#"Colunas Renomeadas", "Assunto CI", each "Dispensa de Licitação"),
    #"Colunas Renomeadas1" = Table.RenameColumns(Personalizar1,{{"Nº CI", "Código CI"}, {"status_ci", "Status CI"}}),
    #"Linhas Classificadas" = Table.Sort(#"Colunas Renomeadas1",{{"Data CI", Order.Descending}})
in
    #"Linhas Classificadas"