let
    Fonte = Oracle.Database("10.17.1.30:1521/pdbprod01.ses.ba", [HierarchicalNavigation=true, Query="SELECT *#(lf)FROM AFSESAB.VW_SIGAF_CADASTRO_CI #(lf)WHERE DATA_CI >= TIMESTAMP '2020-01-01 00:00:00.000000'"]),
    #"Tipo Alterado" = Table.TransformColumnTypes(Fonte,{{"NUMERO_CI", type text}, {"DATA_CI", type date}, {"DESTINO", type text}, {"ORIGEM_CI", type text}, {"SERVIDOR", type text}, {"ASSUNTO_CI", type text}, {"STATUS_CI", type text}, {"NUMERO_PROCESSO", type text}, {"descricao", type text} }),
    #"Duplicatas Removidas" = Table.Distinct(#"Tipo Alterado", {"NUMERO_CI"}),
    #"Texto Limpo" = Table.TransformColumns(#"Duplicatas Removidas",{{"descricao", Text.Clean, type text}}),
    #"Valor Substituído" = Table.ReplaceValue(#"Texto Limpo","CISTEAMINA, (MERCAPTAMINA) 75 MG, CAPSULA OU COMPRIMIDO","CISTEAMINA, (MERCAPTAMINA) 75 MG, CAPSULA OU COMPRIMIDO (AJ)",Replacer.ReplaceText,{"descricao"}),
    #"Linhas Classificadas" = Table.Sort(#"Valor Substituído",{{"DATA_CI", Order.Ascending}}),
    #"Colunas Renomeadas1" = Table.RenameColumns(#"Linhas Classificadas",{{"DATA_CI", "DATA_CI"}}),
    #"Linhas Filtradas1" = Table.SelectRows(#"Colunas Renomeadas1", each ([ORIGEM_CI] = "Coordenação" or [ORIGEM_CI] = "Núcleo de Atendimento MNS" or [ORIGEM_CI] = "Núcleo Planejamento MNS") and ([ASSUNTO_CI] = "Aquisição - Registro de Preços" or [ASSUNTO_CI] = "Dispensa de Licitação" or [ASSUNTO_CI] = "Solicitação de medicamentos sem RP Ativo") and ([SERVIDOR] <> "IURI MIRA" and [SERVIDOR] <> "JUNIELLA LUIZA MIRANDA" and [SERVIDOR] <> "LIVIA DE OLIVEIRA E SILVA SAMPAIO" and [SERVIDOR] <> "LUCAS DUARTE ANDRADE" and [SERVIDOR] <> "RODRIGO CARVALHO DE OLIVEIRA")),
    #"Colunas Removidas" = Table.RemoveColumns(#"Linhas Filtradas1",{"ORIGEM_CI",
"DESTINO"}),
    #"Linhas Classificadas1" = Table.Sort(#"Colunas Removidas",{{"DATA_CI", Order.Descending}}),
    #"Colunas Renomeadas" = Table.RenameColumns(#"Linhas Classificadas1",{{"NUMERO_CI", "Nº CI"}, {"DATA_CI", "Data CI"}, {"SERVIDOR", "Servidor"}, {"ASSUNTO_CI", "Assunto CI"}, {"STATUS_CI", "Status CI"}, {"NUMERO_PROCESSO", "N° Processo"}, {"descricao", "Descrição"}}),
    #"Valor Substituído1" = Table.ReplaceValue(#"Colunas Renomeadas","Solicitação de medicamentos sem RP Ativo","Dispensa de Licitação",Replacer.ReplaceValue,{"Assunto CI"}),
    #"Linhas Filtradas" = Table.SelectRows(#"Valor Substituído1", each true),
    #"Coluna Condicional Adicionada" = Table.AddColumn(#"Linhas Filtradas", "Tipo de atendimento", each if Text.Contains([Descrição], "ADMINIS") then "Administrativo" else "Judicial")
in
    #"Coluna Condicional Adicionada"