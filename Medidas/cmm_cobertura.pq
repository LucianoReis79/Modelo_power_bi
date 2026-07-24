Cobertura Prevista em dias aj texto = 
    (CONCATENATE(
            FORMAT(
                DIVIDE(
                    [Estoque Líquido aj]+[Pendencias de Entrega novo aj] ,[CMM_aj],0)*30 +0,
                "#,0"
            )
            ,
            " dias"
        )
    )
###########################################################
Cobertura Prevista em dias aj = 
    (DIVIDE(
        [Estoque Líquido aj]+[Pendencias de Entrega novo aj] ,[CMM_aj],0)*30)+0

############################################################
Cobertura Prevista em dias ADM texto = 
    (CONCATENATE(
            FORMAT(
                (DIVIDE(
                    [Estoque Líquido adm]+[Pendencias de Entrega novo adm] ,[CMM_adm],0)*30+0),
                "#,0"
            )
            ,
            " dias"
        )
    )
############################################################
Cobertura Prevista em dias adm = 
    (DIVIDE(
        [Estoque Líquido adm]+[Pendencias de Entrega novo adm] ,[CMM_adm],0)*30)+0