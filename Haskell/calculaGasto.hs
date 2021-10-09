calculaGasto:: Float -> Float -> Float -> String
calculaGasto mesada valorItem parcelas
    | fatura <= porcentagem = "Compra liberada"
    | otherwise = "Compra negada"
    where
        fatura = valorItem / parcelas
        porcentagem = mesada * 0.4

main:: IO()
main = do
    mesada <- getLine
    valorItem <- getLine
    parcelas <- getLine
    let resultado = calculaGasto (read mesada) (read valorItem) (read parcelas)
    print resultado
