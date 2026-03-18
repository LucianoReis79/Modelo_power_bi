let

    // Carregar arquivos da pasta 
    Fonte = Oracle.Database("10.17.1.30:1521/pdbprod01.ses.ba", [HierarchicalNavigation=true]){[Schema="AFSESAB"]}[Data]{[Name="VW_SIGAF_REL_PENDENCIAS"]}[Data], 

    // Alterar tipos das colunas 
    TipoAlterado = Table.TransformColumnTypes(Fonte,{{"numero_pedido", Int64.Type}, {"numero_distribuicao", type text}, {"unidade_saude", type text}, {"programa_saude", type text}, {"data_pedido", type date}, {"data_distribuicao", type date}, {"periodo", type text}, {"medicamento_item", type text}, {"consumo_medio_mensal", Int64.Type}, {"qtd_pedida", Int64.Type}, {"qtd_autorizada", Int64.Type}, {"qtd_faturada", Int64.Type}, {"diferenca", Int64.Type}}), 

    #"Linhas Filtradas" = Table.SelectRows(TipoAlterado, each [programa_saude] = "AÇÃO JUDICIAL" or [programa_saude] = "AÇÃO JUDICIAL TERMOLÁBIL" or [programa_saude] = "CAJ - ADMINISTRATIVO"), 

    // Corrigir nomes de medicamentos 
    De = List.Buffer(Dicionário[De]), 
    Para = List.Buffer(Dicionário[Para]), 
    Nome_Corrigido = Table.TransformColumns(#"Linhas Filtradas", {"medicamento_item", each Fn_De_Para(_, De , Para), type text}), 

    // Remover colunas não necessárias 
    #"Colunas Removidas" = Table.RemoveColumns(Nome_Corrigido,{"numero_pedido", "numero_distribuicao","periodo", "unidade_saude", "consumo_medio_mensal", "data_pedido"}), 
    #"Colunas Renomeadas" = Table.RenameColumns(#"Colunas Removidas",{{"medicamento_item", "Medicamento"}}), 
     

    // Mesclar com calendário e adicionar coluna de valor absoluto 
    #"Consultas Mescladas" = Table.NestedJoin(#"Colunas Renomeadas", {"data_distribuicao"}, _Calendario, {"Data"}, "_Calendario", JoinKind.LeftOuter), 
    #"Valor absoluto inserido" = Table.AddColumn(#"Consultas Mescladas", "Valor Absoluto", each Number.Abs([#"diferenca"]), type number), 
    #"Colunas Renomeadas1" = Table.RenameColumns(#"Valor absoluto inserido",{{"Valor Absoluto", "dif Valor Absoluto"}}), 
    #"_Calendario Expandido" = Table.ExpandTableColumn(#"Colunas Renomeadas1", "_Calendario", {"Ano Mês Class"}, {"_Calendario.Ano Mês Class"}),   

    // Calcular intervalo de 7 meses a partir da data atual 
    DataAtual = DateTime.Date(DateTime.LocalNow()), 
    DataInicio = Date.AddMonths(DataAtual, -7), 
    DataFim = DataAtual, 
  

    // Filtrar dados para o intervalo de 7 meses 
    DMM = Table.SelectRows(#"_Calendario Expandido", each [#"data_distribuicao"] >= DataInicio and [#"data_distribuicao"] <= DataFim), 
    #"Linhas Classificadas2" = Table.Sort(DMM,{{"data_distribuicao", Order.Descending}}),   

    // Adicionar coluna de total consumo e agrupar dados 
    #"Personalização Adicionada" = Table.AddColumn(#"Linhas Classificadas2", "total consumo", each [#"qtd_faturada"]+[dif Valor Absoluto]), 
    #"Linhas Agrupadas" = Table.Group(#"Personalização Adicionada", {"Medicamento", "_Calendario.Ano Mês Class"}, {{"Contagem", each List.Sum([total consumo]), type number}}),      

    // Classificar e renomear colunas 
    #"Linhas Classificadas" = Table.Sort(#"Linhas Agrupadas",{{"_Calendario.Ano Mês Class", Order.Descending}}), 
    #"Colunas Renomeadas2" = Table.RenameColumns(#"Linhas Classificadas",{{"_Calendario.Ano Mês Class", "periodo"}, {"Contagem", "faturado"}}), 
    #"Tipo Alterado1" = Table.TransformColumnTypes(#"Colunas Renomeadas2",{{"faturado", Int64.Type}}), 
    #"Texto Limpo" = Table.TransformColumns(#"Tipo Alterado1",{{"Medicamento", Text.Clean, type text}}), 
    #"Texto Aparado" = Table.TransformColumns(#"Texto Limpo",{{"Medicamento", Text.Trim, type text}}), 
    #"Linhas Classificadas1" = Table.Sort(#"Texto Aparado",{{"Medicamento", Order.Ascending}}) 
in 

    #"Linhas Classificadas1"