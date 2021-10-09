somaQuadrado :: Int -> Int
somaQuadrado 1 = 1
somaQuadrado valor
            | valor > 0 = sum [x ^ 2 | x <- [1..valor]] + somaQuadrado (valor-1)
            | otherwise = 0

main :: IO()
main = do
    valor <- getLine
    let resultado = somaQuadrado (read valor)
    print resultado
