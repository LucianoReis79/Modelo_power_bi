let    
Fonte = Table.SelectColumns(SharePoint.Contents("https://prodeboffice365.sharepoint.com/sites/EquipedeMonitoramentoCAJ", [ApiVersion = 15]){[Name="Programao"]}[Content]{[Name="Luciano_Reis"]}[Content]{[Name="POWER BI"]}[Content]{[Name="Dados Power BI"]}[Content]{[Name="NRP"]}[Content],{"Content"}),
    #"Arquivos Ocultos Filtrados1" = Table.SelectRows(Fonte, each [Attributes]?[Hidden]? <> true),
    #"Invocar Função Personalizada1" = Table.AddColumn(#"Arquivos Ocultos Filtrados1", "Transformar Arquivo (5)", each #"Transformar Arquivo (5)"([Content])),
    #"Outras Colunas Removidas1" = Table.SelectColumns(#"Invocar Função Personalizada1", {"Transformar Arquivo (5)"}),
    #"Coluna de Tabela Expandida1" = Table.ExpandTableColumn(#"Outras Colunas Removidas1", "Transformar Arquivo (5)", Table.ColumnNames(#"Transformar Arquivo (5)"(#"Arquivo de Amostra (4)"))),
    #"Tipo Alterado1" = Table.TransformColumnTypes(#"Coluna de Tabela Expandida1",{{"Column1", type text}}),
    #"Texto Aparado2" = Table.TransformColumns(Table.TransformColumnTypes(#"Tipo Alterado1", {{"Column5", type text}, {"Column6", type text}, {"Column7", type text}, {"Column8", type text}, {"Column9", type text}, {"Column10", type text}, {"Column14", type text}}, "pt-BR"),{{"Column1", Text.Trim, type text}, {"Column2", Text.Trim, type text}, {"Column3", Text.Trim, type text}, {"Column4", Text.Trim, type text}, {"Column5", Text.Trim, type text}, {"Column6", Text.Trim, type text}, {"Column7", Text.Trim, type text}, {"Column8", Text.Trim, type text}, {"Column9", Text.Trim, type text}, {"Column10", Text.Trim, type text}, {"Column11", Text.Trim, type text}, {"Column12", Text.Trim, type text}, {"Column13", Text.Trim, type text}, {"Column14", Text.Trim, type text}}),
    #"Texto Limpo2" = Table.TransformColumns(#"Texto Aparado2",{{"Column1", Text.Clean, type text}, {"Column2", Text.Clean, type text}, {"Column3", Text.Clean, type text}, {"Column4", Text.Clean, type text}, {"Column5", Text.Clean, type text}, {"Column6", Text.Clean, type text}, {"Column7", Text.Clean, type text}, {"Column8", Text.Clean, type text}, {"Column9", Text.Clean, type text}, {"Column10", Text.Clean, type text}, {"Column11", Text.Clean, type text}, {"Column12", Text.Clean, type text}, {"Column13", Text.Clean, type text}, {"Column14", Text.Clean, type text}}),
    #"Cabeçalhos Promovidos" = Table.PromoteHeaders(#"Texto Limpo2", [PromoteAllScalars=true]),
    #"Linhas Filtradas" = Table.SelectRows(#"Cabeçalhos Promovidos", each ([MEDICAMENTO] <> null)),
    // Renomeação da coluna original "CÓDIGO SIMPAS" para evitar conflitos
    RenomearCodigoOriginal = Table.RenameColumns(#"Linhas Filtradas", {{"CÓDIGO SIMPAS", "CodigoOriginal"}}),
    #"Tipo Alterado" = Table.TransformColumnTypes(RenomearCodigoOriginal,{{"CodigoOriginal", type text}}),
    #"Texto Limpo" = Table.TransformColumns(#"Tipo Alterado",{{"CodigoOriginal", Text.Clean, type text}}),
    #"Texto Aparado" = Table.TransformColumns(#"Texto Limpo",{{"CodigoOriginal", Text.Trim, type text}}),
    #"Valor Substituído" = Table.ReplaceValue(#"Texto Aparado",".","",Replacer.ReplaceText,{"CodigoOriginal"}),
    // Criação da coluna personalizada "SIMPAS"
    ColunaPersonalizada = Table.AddColumn(#"Valor Substituído", "SIMPAS", each 
        Text.Combine({Text.Start([CodigoOriginal], 2), ".", 
                      Text.Middle([CodigoOriginal], 2, 2), ".19.", 
                      Text.Middle([CodigoOriginal], 6, 8), "-", 
                      Text.Middle([CodigoOriginal], 14)}), type text),
    // Limpeza de texto na coluna "MEDICAMENTO"
    MedicamentoLimpo = Table.TransformColumns(ColunaPersonalizada, {
        {"MEDICAMENTO", Text.Clean, type text}
    }),
    MedicamentoAparado = Table.TransformColumns(MedicamentoLimpo, {
        {"MEDICAMENTO", Text.Trim, type text}
    }),

    #"Colunas Removidas" = Table.RemoveColumns(MedicamentoAparado,{"CodigoOriginal", "RP COMPARTILHADO", "HOSPITALAR", "ESPECIALIZADA", "BÁSICA", "ORIGEM CI", "STATUS", "SETOR", "AÇÃO JUDICIAL", "N° PROCESSO"}),
    #"Texto Aparado1" = Table.TransformColumns(#"Colunas Removidas",{{"SIMPAS", Text.Trim, type text}}),
    #"Texto Limpo1" = Table.TransformColumns(#"Texto Aparado1",{{"SIMPAS", Text.Clean, type text}}),
    #"Erros Removidos" = Table.RemoveRowsWithErrors(#"Texto Limpo1", {"Prazo para ativação, caso logre Êxito"}),
    #"Erros Substituídos" = Table.ReplaceErrorValues(#"Erros Removidos", {{"Prazo para ativação, caso logre Êxito", null}}),
    #"Valor Substituído2" = Table.ReplaceValue(#"Erros Substituídos",null,"",Replacer.ReplaceValue,{"Prazo para ativação, caso logre Êxito"}),
    #"Erros Substituídos1" = Table.ReplaceErrorValues(#"Valor Substituído2", {{"SIMPAS", null}})
in
    #"Erros Substituídos1"