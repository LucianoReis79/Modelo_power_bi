let
    Fonte = Excel.Workbook(SharePoint.Contents("https://prodeboffice365.sharepoint.com/sites/EquipedeMonitoramentoCAJ", [ApiVersion = 15]){[Name="Programao"]}[Content]{[Name="Luciano_Reis"]}[Content]{[Name="POWER BI"]}[Content]{[Name="Dados Power BI"]}[Content]{[Name="Tabela Dicionário.xlsx"]}[Content]),
    Tabela1_Table = Fonte{[Item="Tabela1",Kind="Table"]}[Data],
    #"Tipo Alterado" = Table.TransformColumnTypes(Tabela1_Table,{{"Nome antigo", type text}, {"Nome atual", type text}}),
    #"Colunas Renomeadas" = Table.RenameColumns(#"Tipo Alterado",{{"Nome antigo", "De"}, {"Nome atual", "Para"}})
in
    #"Colunas Renomeadas"