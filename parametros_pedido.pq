let
    Fonte=  Excel.Workbook(SharePoint.Contents("https://prodeboffice365.sharepoint.com/sites/EquipedeMonitoramentoCAJ", [ApiVersion = 15]){[Name="Programao"]}[Content]{[Name="Luciano_Reis"]}[Content]{[Name="POWER BI"]}[Content]{[Name="Dados Power BI"]}[Content]{[Name="Paramentros da programação.xlsx"]}[Content]),
    Planilha1_Sheet = Fonte{[Item="Planilha1",Kind="Sheet"]}[Data],
    #"Cabeçalhos Promovidos" = Table.PromoteHeaders(Planilha1_Sheet, [PromoteAllScalars=true]),
    #"Tipo Alterado" = Table.TransformColumnTypes(#"Cabeçalhos Promovidos",{{"Fator", Int64.Type}})
in
    #"Tipo Alterado"