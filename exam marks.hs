main :: IO ()
main = do
    putStrLn "Enter student name:"
    name <- getLine

    putStrLn "Enter student exam mark:"
    mark <- getLine

    let percentage = read mark :: Int

    if percentage >= 50
        then putStrLn (name ++ " has PASSED!")
        else putStrLn (name ++ " has FAILED!")
