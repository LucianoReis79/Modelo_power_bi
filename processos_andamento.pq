let
    Fonte = #"Controle de Dispensa_2",
    #"Consulta Acrescentada" = Table.Combine({Fonte, #"Controle de Aquisicao", #"CI sem rp"}),
    #"Colunas Removidas2" = Table.RemoveColumns(#"Consulta Acrescentada",{"servidor"}),
    #"Texto Aparado1" = Table.TransformColumns(Table.TransformColumnTypes(#"Colunas Removidas2", {{"Quantidade", type text}, {"Data Conclusão Dispensa", type text}, {"Data CI", type text}, {"Data de Convocação para Assinatura", type text}, {"Data Assinatura AFM", type text}, {"Quantidade Entregue", type text}, {"Valor", type text}, {"Data Entrega AFM", type text}, {"Assunto CI", type text}}, "pt-BR"),{{"Código CI", Text.Trim, type text}, {"Medicamento", Text.Trim, type text}, {"Quantidade", Text.Trim, type text}, {"Status da Dispensa", Text.Trim, type text}, {"Data Conclusão Dispensa", Text.Trim, type text}, {"Data CI", Text.Trim, type text}, {"Origem CI", Text.Trim, type text}, {"Status CI", Text.Trim, type text}, {"Processo SEI", Text.Trim, type text}, {"Nº AFM", Text.Trim, type text}, {"Data de Convocação para Assinatura", Text.Trim, type text}, {"Data Assinatura AFM", Text.Trim, type text}, {"Quantidade Entregue", Text.Trim, type text}, {"Valor", Text.Trim, type text}, {"Data Entrega AFM", Text.Trim, type text}, {"Fornecedor", Text.Trim, type text}}),
    #"Texto Limpo1" = Table.TransformColumns(#"Texto Aparado1",{{"Código CI", Text.Clean, type text}, {"Medicamento", Text.Clean, type text}, {"Quantidade", Text.Clean, type text}, {"Status da Dispensa", Text.Clean, type text}, {"Data Conclusão Dispensa", Text.Clean, type text}, {"Data CI", Text.Clean, type text}, {"Origem CI", Text.Clean, type text}, {"Status CI", Text.Clean, type text}, {"Processo SEI", Text.Clean, type text}, {"Nº AFM", Text.Clean, type text}, {"Data de Convocação para Assinatura", Text.Clean, type text}, {"Data Assinatura AFM", Text.Clean, type text}, {"Quantidade Entregue", Text.Clean, type text}, {"Valor", Text.Clean, type text}, {"Data Entrega AFM", Text.Clean, type text}, {"Fornecedor", Text.Clean, type text}}),
    #"Valor Substituído" = Table.ReplaceValue(#"Texto Limpo1",null,"Dispensa de Licitação",Replacer.ReplaceValue,{"Assunto CI"}),
    #"Linhas Filtradas" = Table.SelectRows(#"Valor Substituído", each true),
    #"Duplicatas Removidas" = Table.Distinct(#"Linhas Filtradas", {"Assunto CI", "Código CI", "Medicamento"}),
    #"Colunas Removidas" = Table.RemoveColumns(#"Duplicatas Removidas",{"Valor", "Data Entrega AFM", "Fornecedor"}),
    #"Linhas Filtradas2" = Table.SelectRows(#"Colunas Removidas", each ([Status da Dispensa] <> "Cancelada")),
    #"Duplicatas Removidas2" = Table.Distinct(#"Linhas Filtradas2", {"Código CI", "Medicamento", "Processo SEI"}),
    #"Consultas Mescladas" = Table.NestedJoin(#"Duplicatas Removidas2", {"Código CI"}, Controle_CI, {"Nº CI"}, "Controle_CI", JoinKind.LeftOuter),
    #"Controle_CI Expandido" = Table.ExpandTableColumn(#"Consultas Mescladas", "Controle_CI", {"N° Processo"}, {"Controle_CI.N° Processo"}),
    #"Colunas Reordenadas" = Table.ReorderColumns(#"Controle_CI Expandido",{"Código CI", "Medicamento", "Quantidade", "Status da Dispensa", "Data Conclusão Dispensa", "Data CI", "Origem CI", "Status CI", "Processo SEI", "Controle_CI.N° Processo", "Nº AFM", "Data de Convocação para Assinatura", "Data Assinatura AFM", "Quantidade Entregue", "Assunto CI"}),
    #"Coluna Condicional Adicionada" = Table.AddColumn(#"Colunas Reordenadas", "SEI", each if [Processo SEI] = "" then [#"Controle_CI.N° Processo"] else [Processo SEI]),
    #"Colunas Reordenadas1" = Table.ReorderColumns(#"Coluna Condicional Adicionada",{"Código CI", "Medicamento", "Quantidade", "Status da Dispensa", "Data Conclusão Dispensa", "Data CI", "Origem CI", "Status CI", "Processo SEI", "Controle_CI.N° Processo", "SEI", "Nº AFM", "Data de Convocação para Assinatura", "Data Assinatura AFM", "Quantidade Entregue", "Assunto CI"}),
    #"Colunas Removidas1" = Table.RemoveColumns(#"Colunas Reordenadas1",{"Processo SEI", "Controle_CI.N° Processo"}),
    #"Tipo Alterado" = Table.TransformColumnTypes(#"Colunas Removidas1",{{"Data de Convocação para Assinatura", type date}}),
    #"Valor Substituído1" = Table.ReplaceValue(#"Tipo Alterado",null,0,Replacer.ReplaceValue,{"Quantidade Entregue"}),
    #"Tipo Alterado1" = Table.TransformColumnTypes(#"Valor Substituído1",{{"Quantidade", Int64.Type}, {"Data Conclusão Dispensa", type date}, {"Data CI", type date}, {"Quantidade Entregue", Int64.Type}}),
    #"Linhas Classificadas" = Table.Sort(#"Tipo Alterado1",{{"Data Conclusão Dispensa", Order.Descending}})
in
    #"Linhas Classificadas"