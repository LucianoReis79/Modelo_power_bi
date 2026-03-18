let
    Fonte = Oracle.Database("10.17.1.30:1521/pdbprod01.ses.ba", [HierarchicalNavigation=true, Query="SELECT *#(lf)FROM AFSESAB.VW_SIGAF_FATURAMENTO_US#(lf)WHERE DATA_PEDIDO >= TIMESTAMP '2018-01-01 00:00:00.000000'"]),
    // Renomeia coluna
    ColunasRenomeadas = Table.RenameColumns(Fonte, {{"NUMERO_PEDIDO", "Pedido"}}),
    
    // Remove coluna desnecessária
    ColunasRemovidas = Table.RemoveColumns(ColunasRenomeadas, {"ALMOXARIFADO_ORIGEM"}),

    // Filtra linhas removendo palavras-chave indesejadas da coluna LISTA_MEDICAMENTO
    PalavrasChave = {
        "COAFE", "ESTRATÉGICO", "COMPONENTE", "INSULINA - MUNICÍPIO", "IMUNOGLOBULINA",
        "SAÚDE DA MULHER - MISOPROSTOL", "INSULINA - DIRES", "ANTICONCEPCIONAIS",
        "HOSPITALAR", "INFECÇÕES OPORTUNISTAS", "PALIVIZUMABE - PROTOCOLO ESTADUAL",
        "PROGRAMA AIDS", "PROGRAMA AIDS - MATERNIDADE / URE", "TESTE TUBERCULOSE - PPD",
        "PROCESSO CE E AJ: COMPLEMENTO ALIMENTAR", "ESTOQUE REGULADOR CEAF","KIT MEDICAMENTOS DESASTRE - ESTADUAL"
    },
    LinhasFiltradas = Table.SelectRows(ColunasRemovidas, each List.AllTrue(List.Transform(PalavrasChave, (x) => not Text.Contains([LISTA_MEDICAMENTO], x)))),

    // Limpeza da coluna MEDICAMENTO
    TextoAparado = Table.TransformColumns(LinhasFiltradas, {{"MEDICAMENTO", Text.Trim, type text}}),
    TextoLimpo = Table.TransformColumns(TextoAparado, {{"MEDICAMENTO", Text.Clean, type text}}),

    // Correção de nomes usando função Fn_De_Para
    De = List.Buffer(Dicionário[De]),
    Para = List.Buffer(Dicionário[Para]),
    NomeCorrigido = Table.TransformColumns(TextoLimpo, {{"MEDICAMENTO", each Fn_De_Para(_, De, Para), type text}}),

    // Ajustes de tipo e limpeza final
    TipoAlterado = Table.TransformColumnTypes(NomeCorrigido, {{"Pedido", type text}, {"DATA_AGENDAMENTO", type date}}),
    TextoPedidoAparado = Table.TransformColumns(TipoAlterado, {{"Pedido", Text.Trim, type text}}),
    TextoPedidoLimpo = Table.TransformColumns(TextoPedidoAparado, {{"Pedido", Text.Clean, type text}}),
    TipoAlteradoFinal = Table.TransformColumnTypes(TextoPedidoLimpo, {{"DATA_AUTORIZACAO", type date}})
in
    TipoAlteradoFinal