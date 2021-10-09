cript :: [Int] -> Int -> [Int]
cript [] _ = []
cript (h:t) i = (h + i):(cript t (i+1))

elevando :: [Int] -> Int -> [Int]
elevando [] _ = []
elevando (h:t) i 
    | mod i 2 == 0 = (2 ^ h ):(elevando t (i+1))
    | otherwise = (h ^ 2):(elevando t (i+1))
    
main :: IO()
main = do
    linha <- getLine
    let lista = read linha :: [Int]
        resultado = elevando (cript lista 1) 1
    print resultado
