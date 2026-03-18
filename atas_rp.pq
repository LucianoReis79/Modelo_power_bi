let
    Fonte = SharePoint.Contents("https://prodeboffice365.sharepoint.com/sites/EquipedeMonitoramentoCAJ", [ApiVersion = 15])
{[Name="Programao"]}[Content]{[Name="Luciano_Reis"]}[Content]{[Name="POWER BI"]}[Content]{[Name="Dados Power BI"]}[Content]
{[Name="Rp ativo_Simpas"]}[Content],
    #"Outras Colunas Removidas" = Table.SelectColumns(Fonte,{"Content"}),
    #"Arquivos Ocultos Filtrados1" = Table.SelectRows(#"Outras Colunas Removidas", each [Attributes]?[Hidden]? <> true),
    #"Invocar Função Personalizada1" = Table.AddColumn(#"Arquivos Ocultos Filtrados1", "Transformar Arquivo (8)", each #"Transformar Arquivo (8)"([Content])),
    #"Outras Colunas Removidas1" = Table.SelectColumns(#"Invocar Função Personalizada1", {"Transformar Arquivo (8)"}),
    #"Coluna de Tabela Expandida1" = Table.ExpandTableColumn(#"Outras Colunas Removidas1", "Transformar Arquivo (8)", Table.ColumnNames(#"Transformar Arquivo (8)"(#"Arquivo de Amostra (27)"))),
    #"Tipo Alterado" = Table.TransformColumnTypes(#"Coluna de Tabela Expandida1",{{"Código do Item", type text}, {"Descrição do Item", type text}, {"U.M.", type text}, {"Valor Unitário", type number}, {"Situação Item RP", type text}, {"Fornecedor", type text}, {"CNPJ", type text}, {"UF", type text}, {"Sit.Forn. RP", type text}, {"Marca", type text}, {"Qtd.Licitada", Int64.Type}, {"Qtd.Usada", Int64.Type}, {"Saldo Contratação", Int64.Type}, {"Aditada", Int64.Type}, {"Fim do Saldo", type datetime}, {"Licitaçao", type text}, {"Região", type text}, {"Validade", type date}, {"Sustentável", type any}, {"RC", type text}, {"Exc MPE", type text}}),
    #"Linhas Filtradas1" = Table.SelectRows(#"Tipo Alterado", each [Sit.Forn. RP] = "Ativo" or [Sit.Forn. RP] = "Pausa"),
    #"Colunas Renomeadas2" = Table.RenameColumns(#"Linhas Filtradas1",{{"U.M.", "U.M."}}),
    #"Colunas Removidas" = Table.RemoveColumns(#"Colunas Renomeadas2",{"Unidade", "Descrição da Unidade", "U.M."}),
    #"Colunas Removidas2" = Table.RemoveColumns(#"Colunas Renomeadas2",{"Unidade", "Descrição da Unidade", "U.M."}),
    Personalizar1 = Table.TransformColumnTypes(#"Colunas Removidas",{{"Valor Unitário", Currency.Type}}),
    #"Colunas Removidas1" = Table.RemoveColumns(#"Linhas Filtradas1",{"Situação Item RP", "Qtd.Licitada", "Qtd.Usada", "Aditada"}),
    #"Tipo Alterado1" = Table.TransformColumnTypes(#"Colunas Removidas1",{{"Saldo Contratação", Int64.Type}}),
    #"Colunas Removidas3" = Table.RemoveColumns(#"Tipo Alterado1",{"Região"}),
    #"Colunas Renomeadas" = Table.RenameColumns(#"Colunas Removidas3",{{"Código do Item", "CÓDIGO SIMPAS"}, {"Saldo Contratação", "Saldo"}}),
    #"Tipo Alterado2" = Table.TransformColumnTypes(#"Colunas Renomeadas",{{"Validade", type date}}),
    #"Colunas Renomeadas1" = Table.RenameColumns(#"Tipo Alterado2",{{"Validade", "Validade Ata"}, {"Sit.Forn. RP", "Rp Ativo"}}),
    #"Valor Substituído" = Table.ReplaceValue(#"Colunas Renomeadas1","Ativo","Sim",Replacer.ReplaceText,{"Rp Ativo"}),
    #"Valor Substituído1" = Table.ReplaceValue(#"Valor Substituído","Pausa","Pausado",Replacer.ReplaceText,{"Rp Ativo"}),
    #"Tipo Alterado3" = Table.TransformColumnTypes(#"Valor Substituído1",{{"Fator Embalagem", Int64.Type}}),
    #"Colunas Removidas4" = Table.RemoveColumns(#"Tipo Alterado3",{"Sustentável", "RC", "Exc MPE"})
in
    #"Colunas Removidas4"