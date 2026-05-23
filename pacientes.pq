let
    Fonte = Oracle.Database("10.17.1.30:1521/pdbprod01.ses.ba", [HierarchicalNavigation=true]){[Schema="AFSESAB"]}[Data]{[Name="VW_SIGAF_CALAF_DETALHE_D1"]}[Data],
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
    #"Texto Aparado1" = Table.TransformColumns(Table.TransformColumnTypes(#"Colunas Renomeadas", {{"Data", type text}, {"Quantidade Autorizada", type text}, {"Frequência (em dias)", type text}, {"Período de tratamento (em meses)", type text}, {"Data Próximo Atendimento", type text}}, "pt-BR"),{{"Número do processo", Text.Trim, type text}, {"Data", Text.Trim, type text}, {"Interessado", Text.Trim, type text}, {"Tipo Ação", Text.Trim, type text}, {"Medicamento", Text.Trim, type text}, {"Unidade Dispensadora", Text.Trim, type text}, {"Status", Text.Trim, type text}, {"Quantidade Autorizada", Text.Trim, type text}, {"Frequência (em dias)", Text.Trim, type text}, {"Período de tratamento (em meses)", Text.Trim, type text}, {"Data Próximo Atendimento", Text.Trim, type text}, {"Período de Tratamento", Text.Trim, type text}, {"Data Primeiro Atendimento", Text.Trim, type text}}),
    #"Texto Limpo1" = Table.TransformColumns(#"Texto Aparado1",{{"Número do processo", Text.Clean, type text}, {"Data", Text.Clean, type text}, {"Interessado", Text.Clean, type text}, {"Tipo Ação", Text.Clean, type text}, {"Medicamento", Text.Clean, type text}, {"Unidade Dispensadora", Text.Clean, type text}, {"Status", Text.Clean, type text}, {"Quantidade Autorizada", Text.Clean, type text}, {"Frequência (em dias)", Text.Clean, type text}, {"Período de tratamento (em meses)", Text.Clean, type text}, {"Data Próximo Atendimento", Text.Clean, type text}, {"Período de Tratamento", Text.Clean, type text}, {"Data Primeiro Atendimento", Text.Clean, type text}}),
    Personalizar1 = Table.AddColumn(#"Texto Limpo1" , "Tipo", each if [#"Número do processo"] = "24027-56.2012.4.01.3300" then "Ação Civil Pública" else if Text.StartsWith([#"Número do processo"], "0549646-45.2016.8.05.0001") then "Ação Civil Pública" else [#"Tipo Ação"]),
    #"Dividir Coluna por Delimitador" = Table.SplitColumn(Personalizar1, "Data Primeiro Atendimento", Splitter.SplitTextByDelimiter(" ", QuoteStyle.Csv), {"Data Primeiro Atendimento.1", "Data Primeiro Atendimento.2"}),
    #"Colunas Removidas1" = Table.RemoveColumns(#"Dividir Coluna por Delimitador",{"Data Primeiro Atendimento.2"}),
    #"Valor Substituído1" = Table.ReplaceValue(#"Colunas Removidas1",null,"",Replacer.ReplaceValue,{"Data Primeiro Atendimento.1"}),
    #"Tipo Alterado1" = Table.TransformColumnTypes(#"Valor Substituído1",{{"Data Primeiro Atendimento.1", type date}}),
    #"Colunas Renomeadas1" = Table.RenameColumns(#"Tipo Alterado1",{{"Data Primeiro Atendimento.1", "Data Primeiro Atendimento"}}),
    #"Coluna Duplicada" = Table.DuplicateColumn(#"Colunas Renomeadas1", "Interessado", "Interessado - Copiar"),
    #"Colunas Renomeadas3" = Table.RenameColumns(#"Coluna Duplicada",{{"Interessado - Copiar", "Interessado-SEI"}}),
    #"Tipo Alterado2" = Table.TransformColumnTypes(#"Colunas Renomeadas3",{{"Data", type date}, {"Número do processo", type text}, {"Interessado", type text}, {"Tipo Ação", type text}, {"Medicamento", type text}, {"Unidade Dispensadora", type text}, {"Status", type text}, {"Quantidade Autorizada", Int64.Type}, {"Frequência (em dias)", Int64.Type}, {"Período de tratamento (em meses)", Int64.Type}, {"Data Próximo Atendimento", type datetime}, {"Período de Tratamento", type text}, {"Data Primeiro Atendimento", type date}, {"Tipo", type text}}),
    // 🔹 Limpeza consolidada (muito mais performático)
#"Limpeza Texto" =
    Table.TransformColumns(
        #"Tipo Alterado2",
        {
            {
                "Interessado",
                each
                    let
                        txt = _,
                        txt1 = Text.Replace(txt, "SEI Nº", ""),
                        txt2 = Text.Replace(txt1, "SEI N°", ""),
                        txt3 = Text.Replace(txt2, "SIEI N", ""),
                        txt4 = Text.Replace(txt3, "(SEI", "*"),
                        txt5 = Text.Replace(txt4, "Nº", ""),
                        txt6 = Text.Replace(txt5, "N°", ""),
                        txt7 = Text.Replace(txt6, "°", ""),
                        txt8 = Text.Replace(txt7, "- SEI", "*"),
                        txt9 = Text.Replace(txt8, "-SEI", "*"),
                        txt10 = Text.Replace(txt9, "- *", "*"),
                        txt11 = Text.Replace(txt10, "-*", "*"),
                        txt12 = Text.Replace(txt11, "* SEI", "*"),
                        txt13 = Text.Replace(txt12, "(", "*"),
                        txt14 = Text.Replace(txt13, ")", "*"),
                        txt15 = Text.Replace(txt13, " * *", "*")
                    in
                        txt15,
                type text
            }
        }
    ),

// 🔹 Regra do 019 (INÍCIO OU FINAL)
#"Padronizar 019" =
    Table.TransformColumns(
        #"Limpeza Texto",
        {
            {
                "Interessado",
                each
                    let
                        txt = Text.Trim(_)
                    in
                        if Text.StartsWith(txt, "019.")
                        then "*" & txt
                        else if Text.Contains(txt, " 019.")
                        then Text.Replace(txt, " 019.", " *019.")
                        else txt,
                type text
            }
        }
    ),
    #"Valor Substituído2" = Table.ReplaceValue(#"Padronizar 019","* *","*",Replacer.ReplaceText,{"Interessado"}),
    #"Valor Substituído3" = Table.ReplaceValue(#"Valor Substituído2","019.5022","*019.5022",Replacer.ReplaceText,{"Interessado"}),
    #"Valor Substituído4" = Table.ReplaceValue(#"Valor Substituído3","- ","*",Replacer.ReplaceText,{"Interessado"}),
    #"Valor Substituído5" = Table.ReplaceValue(#"Valor Substituído4","*  SEI","*",Replacer.ReplaceText,{"Interessado"}),
    #"Valor Substituído6" = Table.ReplaceValue(#"Valor Substituído5","* *","*",Replacer.ReplaceText,{"Interessado"}),
    #"Valor Substituído7" = Table.ReplaceValue(#"Valor Substituído6","*)","",Replacer.ReplaceText,{"Interessado"}),
    #"Valor Substituído8" = Table.ReplaceValue(#"Valor Substituído7","*  *","*",Replacer.ReplaceText,{"Interessado"}),
    #"Valor Substituído9" = Table.ReplaceValue(#"Valor Substituído8","**","*",Replacer.ReplaceText,{"Interessado"}),

    #"Padronizar 006" =
    Table.TransformColumns(
       #"Valor Substituído9",
        {
            {
                "Interessado",
                each Text.Replace(_, " 006.", " *006."),
                type text
            }
        }
    ),
    #"Valor Substituído10" = Table.ReplaceValue(#"Padronizar 006","*  *","*",Replacer.ReplaceText,{"Interessado"}),
    #"Remover * inicial" =
    Table.TransformColumns(
        #"Valor Substituído10",
        {
            {
                "Interessado",
                each Text.TrimStart(_, {"*"}),
                type text
            }
        }
    ),
    #"Valor Substituído12" = Table.ReplaceValue(#"Remover * inicial","SEI:","",Replacer.ReplaceText,{"Interessado"}),
    #"Valor Substituído13" = Table.ReplaceValue(#"Valor Substituído12",":","",Replacer.ReplaceText,{"Interessado"}),
    #"Dividir Coluna por Delimitador1" = Table.SplitColumn(#"Valor Substituído13", "Interessado", Splitter.SplitTextByEachDelimiter({"*"}, QuoteStyle.Csv, false), {"Interessado.1", "Interessado.2"}),
    #"Valor Substituído11" = Table.ReplaceValue(#"Dividir Coluna por Delimitador1","*","",Replacer.ReplaceText,{"Interessado.2"}),
    #"Texto Aparado2" = Table.TransformColumns(#"Valor Substituído11",{{"Interessado.2", Text.Trim, type text}}),
    #"Texto Limpo2" = Table.TransformColumns(#"Texto Aparado2",{{"Interessado.2", Text.Clean, type text}}),
    #"Valor Substituído14" = Table.ReplaceValue(#"Texto Limpo2","SEI","",Replacer.ReplaceText,{"Interessado.2"}),
    #"Valor Substituído16" = Table.ReplaceValue(#"Valor Substituído14","N","",Replacer.ReplaceText,{"Interessado.2"}),
    #"Texto Aparado3" = Table.TransformColumns(#"Valor Substituído16",{{"Interessado.2", Text.Trim, type text}, {"Interessado.1", Text.Trim, type text}}),
    #"Texto Limpo3" = Table.TransformColumns(#"Texto Aparado3",{{"Interessado.2", Text.Clean, type text}, {"Interessado.1", Text.Clean, type text}}),
    #"Valor Substituído15" = Table.ReplaceValue(#"Texto Limpo3",null,"",Replacer.ReplaceValue,{"Interessado.1", "Interessado.2"}),
    #"Linhas Filtradas1" = Table.SelectRows(#"Valor Substituído15", each true),
    #"Colunas Renomeadas2" = Table.RenameColumns(#"Linhas Filtradas1",{{"Interessado.1", "Interessado"}, {"Interessado.2", "SEI"}}),
    #"Linhas Classificadas" = Table.Sort(#"Colunas Renomeadas2",{{"SEI", Order.Descending}}),
    #"Valor Substituído17" = Table.ReplaceValue(#"Linhas Classificadas","º ","",Replacer.ReplaceText,{"SEI"}),
    #"Valor Substituído18" = Table.ReplaceValue(#"Valor Substituído17",")","",Replacer.ReplaceText,{"SEI"}),
    #"Valor Substituído19" = Table.ReplaceValue(#"Valor Substituído18"," I ","",Replacer.ReplaceText,{"SEI"}),
    #"Valor Substituído20" = Table.ReplaceValue(#"Valor Substituído19","ª","",Replacer.ReplaceText,{"SEI"}),
    #"Valor Substituído21" = Table.ReplaceValue(#"Valor Substituído20","]","",Replacer.ReplaceText,{"SEI"}),
    #"Valor Substituído22" = Table.ReplaceValue(#"Valor Substituído21","SI","",Replacer.ReplaceText,{"SEI"}),
    #"Valor Substituído23" = Table.ReplaceValue(#"Valor Substituído22","SI ","",Replacer.ReplaceText,{"SEI"}),
    #"Valor Substituído24" = Table.ReplaceValue(#"Valor Substituído23","SE ","",Replacer.ReplaceText,{"SEI"}),
    #"Valor Substituído25" = Table.ReplaceValue(#"Valor Substituído24","2 019.8699.2019.0096364-14","019.8699.2019.0096364-14",Replacer.ReplaceText,{"SEI"})
in
    #"Valor Substituído25"