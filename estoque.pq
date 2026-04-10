let
    Fonte = Oracle.Database("10.17.1.30:1521/pdbprod01.ses.ba", [HierarchicalNavigation=true, Query="SELECT *#(lf)FROM AFSESAB.VW_SIGAF_REL_ESTOQUE#(lf)WHERE DATA_VENCIMENTO >= TIMESTAMP '2025-01-01 00:00:00.000000'"]),
    // Alterar tipos de colunas
    TipoAlterado = Table.TransformColumnTypes(Fonte, {
        {"MEDICAMENTO", type text}, 
        {"UNIDADE", type text}, 
        {"FABRICANTE", type text}, 
        {"lote", type text}, 
        {"DATA_VENCIMENTO", type date}, 
        {"UNIDADES_EM_ESTOQUE", Int64.Type}, 
        {"valor_unitario", type number}, 
        {"PROGRAMA_SAUDE", type text}, 
        {"PRECO_TOTAL", type number}
    }),
    // Filtrar linhas pelo programa de saúde e unidade
    LinhasFiltradas = Table.SelectRows(TipoAlterado, 
        each ([PROGRAMA_SAUDE] = "AÇÃO JUDICIAL" or [PROGRAMA_SAUDE] = "AÇÃO JUDICIAL TERMOLÁBIL" or [PROGRAMA_SAUDE] = "CAJ - ADMINISTRATIVO") 
        and ([UNIDADE] = "CEFARBA - CENTRAL FARMACÊUTICA DO ESTADO DA BAHIA")
    ),

    // Aplicar correção de nomes utilizando dicionário
    De = List.Buffer(Dicionário[De]),
    Para = List.Buffer(Dicionário[Para]),
    NomeCorrigido = Table.TransformColumns(LinhasFiltradas, {"MEDICAMENTO", each Fn_De_Para(_, De, Para), type text}),

    // Remover colunas desnecessárias
    ColunasRemovidas = Table.RemoveColumns(NomeCorrigido, {"UNIDADE","PRODUTO","PRECO_TOTAL"}),

    // Filtrar medicamentos não nulos e renomear coluna
    MedicamentoFiltrado = Table.SelectRows(ColunasRemovidas, each [MEDICAMENTO] <> null and [MEDICAMENTO] <> ""),
    ColunasRenomeadas = Table.RenameColumns(MedicamentoFiltrado, {{"DATA_VENCIMENTO", "VALIDADE"}}),

    // Ordenar por validade e filtrar lotes válidos
    LinhasOrdenadas = Table.Sort(ColunasRenomeadas, {{"VALIDADE", Order.Ascending}}),
    LotesValidos = Table.SelectRows(LinhasOrdenadas, each [lote] <> "" and [UNIDADES_EM_ESTOQUE] <> null),
    
    // Adicionar coluna condicional e limpar texto de lotes
    ColunaCondicional = Table.AddColumn(LotesValidos, "Carta de troca", each if Text.Contains([lote], "LOTE") then "Sim" else "Não"),
    // Filtrar por validade após 2015 e classificar por estoque e validade
    ValidadeFiltrada = Table.SelectRows(ColunaCondicional, each [VALIDADE] > #date(2015, 1, 1)),
    LinhasClassificadas = Table.Sort(ValidadeFiltrada, {{"VALIDADE", Order.Ascending}, {"UNIDADES_EM_ESTOQUE", Order.Descending}}),

    // Filtrar medicamentos específicos
    MedicamentoExcluido = Table.SelectRows(LinhasClassificadas, each [MEDICAMENTO] <> "FORMULA ELEMENTAR HIPOALERGENICA INDICADO PARA SINDROME DO INTESTINO CURTO E ALERGIA ALIMENTAR (NEOCATE LCP, ALFAMINO,PURAMINO)"),

    // Ordenar medicamentos e ajustar tipos finais
    OrdenacaoFinal = Table.Sort(MedicamentoExcluido, {{"MEDICAMENTO", Order.Ascending}}),
    TipoFinal = Table.TransformColumnTypes(OrdenacaoFinal, {{"Carta de troca", type text}}),
    #"Texto Aparado" = Table.TransformColumns(TipoFinal,{{"lote", Text.Trim, type text}}),
    #"Texto Limpo" = Table.TransformColumns(#"Texto Aparado",{{"lote", Text.Clean, type text}}),
    #"Colunas Renomeadas" = Table.RenameColumns(#"Texto Limpo",{{"MEDICAMENTO", "Medicamento"}, {"lote", "Lote"}, {"VALIDADE", "Validade"}, {"UNIDADES_EM_ESTOQUE", "Unidades em Estoque"}, {"valor_unitario", "valor unitário"}})
in
    #"Colunas Renomeadas"