let
    Fonte = Oracle.Database("10.17.1.30:1521/pdbprod01.ses.ba", [HierarchicalNavigation=true]){[Schema="AFSESAB"]}[Data]{[Name="VW_SIGAF_CALAF_DETALHE"]}[Data],
    #"Tipo Alterado" = Table.TransformColumnTypes(Fonte, {
        {"NUMERO_PROCESSO", type text}, 
        {"DATA_ENTRADA", type date}, 
        {"INTERESSADO", type text}, 
        {"TIPO_ACAO", type text}, 
        {"MEDICAMENTO", type text}, 
        {"UNIDADE_DISPENSADORA", type text}, 
        {"STATUS_PROCESSO", type text}, 
        {"QUANTIDADE_AUTORIZADA", Int64.Type}, 
        {"FREQUENCIA_EM_DIAS", Int64.Type}, 
        {"PERIODO_TRATAMENTO_MESES", Int64.Type}, 
        {"NUMERO_ATENDIMENTO", Int64.Type}, 
        {"DATA_PRIMEIRO_ATENDIMENTO", type text}
    }),
    #"Erros Substituídos" = Table.ReplaceErrorValues(#"Tipo Alterado", {{"DATA_ENTRADA", #date(2018, 1, 1)}}),
    #"Colunas Removidas" = Table.RemoveColumns(#"Erros Substituídos", {"PRAZO_ATENDIMENTO", "DATA_PRAZO_ATENDIMENTO", "CODIGO_CI", "NUMERO_PROCESSO_COMPRA","NUMERO_ATENDIMENTO"}),
    
    // Consolidando as filtragens da coluna MEDICAMENTO
    FiltroExclusoes = List.Combine({
        {"ALIMENTO", "DIETA", "LEITE", "MODULO", "ESPESSANTE", "GLUTAMINA", "FORMULA"},
        {"SUPLEMENTO", "FRESUBIN", "NOVAMIL", "ISOSOURCE", "PEPTAMEN", "FORMULA INFANTIL","MODULEN","NUTRISON"}
    }),
    #"Linhas Filtradas" = Table.SelectRows(#"Colunas Removidas", each 
        List.Accumulate(FiltroExclusoes, true, (state, excl) => state and not Text.Contains([MEDICAMENTO], excl))
    ),

    // Substituindo valores em uma única operação
    #"Valor Substituído" = Table.ReplaceValue(#"Linhas Filtradas", "", "Ação Judicial", Replacer.ReplaceValue, {"TIPO_ACAO"}),
    #"Renomeando Coluna DATA_ENTRADA" = Table.RenameColumns(#"Valor Substituído", {{"DATA_ENTRADA", "DATA"}}),

    // Substituindo valores específicos
    SubstituicoesMedicamento = Table.ReplaceValue(#"Renomeando Coluna DATA_ENTRADA", 
        "SERINGA, DE INSULINA, DESCARTÁVEL, USO ÚNICO, ATÓXICA, ESCALA GRADUADA 1 EM 1U, S/ ESPAÇO MORTO, CAPACIDADE P/ ATÉ 100U DE INSULINA", 
        "SERINGA PARA INSULINA 100 UI", Replacer.ReplaceValue, {"MEDICAMENTO"}),
    #"Texto Aparado" = Table.TransformColumns(SubstituicoesMedicamento,{{"INTERESSADO", Text.Trim, type text}}),
    #"Texto Limpo" = Table.TransformColumns(#"Texto Aparado",{{"INTERESSADO", Text.Clean, type text}}),
    #"Texto em Maiúscula" = Table.TransformColumns(#"Texto Limpo",{{"INTERESSADO", Text.Upper, type text}}),
    #"Colunas Renomeadas" = Table.RenameColumns(#"Texto em Maiúscula",{{"NUMERO_PROCESSO", "Número do processo"}, {"DATA", "Data"}, {"INTERESSADO", "Interessado"}, {"TIPO_ACAO", "Tipo Ação"}, {"MEDICAMENTO", "Medicamento"}, {"UNIDADE_DISPENSADORA", "Unidade Dispensadora"}, {"STATUS_PROCESSO", "Status"}, {"QUANTIDADE_AUTORIZADA", "Quantidade Autorizada"}, {"FREQUENCIA_EM_DIAS", "Frequência (em dias)"}, {"PERIODO_TRATAMENTO_MESES", "Período de tratamento (em meses)"}, {"DATA_PROXIMO_ATENDIMENTO", "Data Próximo Atendimento"}, {"DATA_PRIMEIRO_ATENDIMENTO", "Data Primeiro Atendimento"}, {"TIPO_PERIODO_TRATAMENTO", "Período de Tratamento"}}),
    Personalizar1 = Table.AddColumn(#"Colunas Renomeadas" , "Tipo", each if [#"Número do processo"] = "24027-56.2012.4.01.3300" then "Ação Civil Pública" else if Text.StartsWith([#"Número do processo"], "0549646-45.2016.8.05.0001") then "Ação Civil Pública" else [#"Tipo Ação"]),
    #"Dividir Coluna por Delimitador" = Table.SplitColumn(Personalizar1, "Data Primeiro Atendimento", Splitter.SplitTextByDelimiter(" ", QuoteStyle.Csv), {"Data Primeiro Atendimento.1", "Data Primeiro Atendimento.2"}),
    #"Colunas Removidas1" = Table.RemoveColumns(#"Dividir Coluna por Delimitador",{"Data Primeiro Atendimento.2"}),
    #"Valor Substituído1" = Table.ReplaceValue(#"Colunas Removidas1",null,"",Replacer.ReplaceValue,{"Data Primeiro Atendimento.1"}),
    #"Tipo Alterado1" = Table.TransformColumnTypes(#"Valor Substituído1",{{"Data Primeiro Atendimento.1", type date}}),
    #"Colunas Renomeadas1" = Table.RenameColumns(#"Tipo Alterado1",{{"Data Primeiro Atendimento.1", "Data Primeiro Atendimento"}})
in
    #"Colunas Renomeadas1"