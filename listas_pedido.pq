let
    Fonte = Excel.Workbook(SharePoint.Contents("https://prodeboffice365.sharepoint.com/sites/EquipedeMonitoramentoCAJ", [ApiVersion = 15]){[Name="Programao"]}[Content]{[Name="Luciano_Reis"]}[Content]{[Name="POWER BI"]}[Content]{[Name="Dados Power BI"]}[Content]{[Name="Listas_caj.xlsx"]}[Content]),
    #"Linhas Filtradas" = Table.SelectRows(Fonte, each ([Item] = "Tabela1")),
    #"Outras Colunas Removidas" = Table.SelectColumns(#"Linhas Filtradas",{"Data"}),
    #"Data Expandido" = Table.ExpandTableColumn(#"Outras Colunas Removidas", "Data", {"Medicamento", "Lista", "Tipo da Lista"}, {"Medicamento", "Lista", "Tipo da Lista"}),
    #"Tipo Alterado" = Table.TransformColumnTypes(#"Data Expandido",{{"Medicamento", type text}, {"Lista", type text}, {"Tipo da Lista", type text}}),
    #"Texto Aparado" = Table.TransformColumns(#"Tipo Alterado",{{"Tipo da Lista", Text.Trim, type text}, {"Lista", Text.Trim, type text}, {"Medicamento", Text.Trim, type text}}),
    #"Texto Limpo" = Table.TransformColumns(#"Texto Aparado",{{"Tipo da Lista", Text.Clean, type text}, {"Lista", Text.Clean, type text}, {"Medicamento", Text.Clean, type text}}),
    #"Texto em Maiúscula" = Table.TransformColumns(#"Texto Limpo",{{"Tipo da Lista", Text.Upper, type text}, {"Lista", Text.Upper, type text}, {"Medicamento", Text.Upper, type text}}),


    // Aplicar correção de nomes utilizando dicionário
    De = List.Buffer(Dicionário[De]),
    Para = List.Buffer(Dicionário[Para]),
    NomeCorrigido = Table.TransformColumns( #"Texto em Maiúscula", {"Medicamento", each Fn_De_Para(_, De, Para), type text})
in
    NomeCorrigido