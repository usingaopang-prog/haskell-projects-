isEven :: Int -> Bool
isEven n
    | n `mod` 2 == 0 = True
    | otherwise      = False

main :: IO ()
main = do
    print (isEven 4)   -- True
    print (isEven 7)   -- False