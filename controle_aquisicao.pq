let
    Fonte = Table.SelectColumns(SharePoint.Contents("https://prodeboffice365.sharepoint.com/sites/EquipedeMonitoramentoCAJ", [ApiVersion = 15]){[Name="Programao"]}[Content]{[Name="Luciano_Reis"]}[Content]{[Name="POWER BI"]}[Content]{[Name="Dados Power BI"]}[Content]{[Name="Controle de Aquisicao"]}[Content],{"Content"}),
    #"Outras Colunas Removidas" = Table.SelectColumns(Fonte,{"Content"}),
    #"Arquivos Ocultos Filtrados1" = Table.SelectRows(#"Outras Colunas Removidas", each [Attributes]?[Hidden]? <> true),
    #"Invocar Função Personalizada1" = Table.AddColumn(#"Arquivos Ocultos Filtrados1", "Transformar Arquivo (3)", each #"Transformar Arquivo (3)"([Content])),
    #"Outras Colunas Removidas1" = Table.SelectColumns(#"Invocar Função Personalizada1", {"Transformar Arquivo (3)"}),
    #"Coluna de Tabela Expandida1" = Table.ExpandTableColumn(#"Outras Colunas Removidas1", "Transformar Arquivo (3)", Table.ColumnNames(#"Transformar Arquivo (3)"(#"Arquivo de Amostra (3)"))),
    #"Cabeçalhos Promovidos" = Table.PromoteHeaders(#"Coluna de Tabela Expandida1", [PromoteAllScalars=true]),
    #"Colunas Renomeadas1" = Table.RenameColumns(#"Cabeçalhos Promovidos",{{"Código CI ", "Código CI"}, {"Medicamento ", "Medicamento"}, {"Código Simpas ", "Código Simpas"}, {"Quantidade ", "Quantidade"}, {"Valor ", "Valor"}, {"Nº Processo ", "Nº Processo"}, {"Empenhar ", "Empenhar"}, {"Nº AFM ", "Nº AFM"}, {"Data de Convocação para Assinatura ", "Data de Convocação para Assinatura"}, {"Data Assinatura AFM ", "Data Assinatura AFM"}, {"Data Entrega AFM ", "Data Entrega AFM"}, {"Quantidade Entregue ", "Quantidade Entregue"}, {"Nº RP - Licitação ", "Nº RP - Licitação"}, {"Validade RP ", "Validade RP"}, {"Fornecedor ", "Fornecedor"}, {"Data CI ", "Data CI"}, {"Origem CI ", "Origem CI"}, {"Assunto CI ", "Assunto CI"}, {"Status CI ", "Status CI"}, {"PAOE ", "PAOE"}, {"Fonte ", "Fonte"}}),
    #"Colunas Removidas" = Table.RemoveColumns(#"Colunas Renomeadas1",{""}),
    #"Linhas Filtradas" = Table.SelectRows(#"Colunas Removidas", each ([Origem CI] <> "Núcleo AF Básica ")),
    #"Linhas Filtradas1" = Table.SelectRows(#"Linhas Filtradas", each Text.Contains([PAOE], "6063") or Text.Contains([PAOE], "4256") or Text.Contains([PAOE], "4255")),
    // Alteração de tipos de dados
    TipoAlterado = Table.TransformColumnTypes(#"Linhas Filtradas1", {
        {"Código CI", type text}, {"Medicamento", type text}, {"Código Simpas", type any},
        {"Quantidade", type number}, {"Valor", type number}, {"Nº Processo", type text},
        {"Empenhar", type text}, {"Nº AFM", type text}, {"Data Assinatura AFM", type date},
        {"Data Entrega AFM", type date}, {"Quantidade Entregue", type number}, 
        {"Nº RP - Licitação", Int64.Type}, {"Validade RP", type date}, {"Fornecedor", type text},
        {"Data CI", type date}, {"Origem CI", type text}, {"Assunto CI", type text},
        {"Status CI", type text}, {"PAOE", Int64.Type}, {"Fonte", Int64.Type}
    }),
    // Aplicando a função de mapeamento De-Para
    NomeCorrigido = Table.TransformColumns(TipoAlterado, {"Medicamento", each Fn_De_Para(_, List.Buffer(Dicionário[De]), List.Buffer(Dicionário[Para])), type text}),

    // Removendo colunas indesejadas
    ColunasRemovidas = Table.RemoveColumns(NomeCorrigido, {"Código Simpas", "Empenhar", "Fonte", "Nº RP - Licitação", "Validade RP", "Origem CI"}),

    // Filtrando linhas com condições específicas
    LinhasFiltradas = Table.SelectRows(ColunasRemovidas, each 
        ([Medicamento] <> "") and 
        not Text.Contains([Medicamento], "ALIMENTO") and 
        not Text.Contains([Medicamento], "FORMULA") and 
        not Text.Contains([Medicamento], "SUPLEMENTO") and
        ([Status CI] <> "Coordenação") and 
        ([Status CI] <> "Dispensa de Licitação") and 
        ([Código CI] <> "1369/2021")
    ),

    // Removendo erros nas colunas relevantes
    ErrosRemovidos = Table.RemoveRowsWithErrors(LinhasFiltradas, {"Quantidade"}),

    TipoAlterado_Final = Table.TransformColumnTypes(ErrosRemovidos, {
        {"Data Assinatura AFM", type date}, {"Data Entrega AFM", type date}
    }),
    #"Erros Substituídos" = Table.ReplaceErrorValues(TipoAlterado_Final, {{"Data Assinatura AFM", null}}),
    #"Erros Substituídos1" = Table.ReplaceErrorValues(#"Erros Substituídos", {{"Data Entrega AFM", null}}),
    #"Colunas Renomeadas" = Table.RenameColumns(#"Erros Substituídos1",{{"Nº Processo", "Processo SEI"}})
in
    #"Colunas Renomeadas"