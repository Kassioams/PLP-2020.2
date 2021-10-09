contaCedulas:: Int -> Int
contaCedulas valor
  | valor >= 100 =
        calculaDiv valor 100
  | valor >= 50 = 
        calculaDiv valor 50
  | valor >= 20 = 
        calculaDiv valor 20
  | valor >= 10 =
        calculaDiv valor 10
  | valor >= 5 = 
        calculaDiv valor 5
  | valor >= 2 = 
        calculaDiv valor 2
  | valor >= 1 =
        calculaDiv valor 1
  | otherwise = 0
    
        
calculaDiv:: Int -> Int -> Int
calculaDiv valor cedula = div (valor - (mod valor cedula)) cedula + contaCedulas (mod valor (cedula))

main:: IO()
main = do
    valor <- getLine
    let resultado = contaCedulas (read valor)
    print resultado
