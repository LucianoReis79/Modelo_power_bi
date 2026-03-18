(Texto as text , De as list , Para as list)=>
let
    Zip = List.Zip({ De , Para}),
    Resultado = List.ReplaceMatchingItems( {Texto} , Zip){0}
in
    Resultado