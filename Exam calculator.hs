calculateFinalMark :: Double -> Double -> Double -> Double
calculateFinalMark ca uca exam =
    (ca * 0.20) + (uca * 0.20) + (exam * 0.60)

main :: IO ()
main = do
    putStrLn "Enter student name:"
    name <- getLine

    putStrLn "Enter Controlled Assignment mark (out of 100):"
    caInput <- getLine
    let ca = read caInput :: Double

    putStrLn "Enter Uncontrolled Assignment mark (out of 100):"
    ucaInput <- getLine
    let uca = read ucaInput :: Double

    putStrLn "Enter Final Examination mark (out of 100):"
    examInput <- getLine
    let exam = read examInput :: Double

    
    let finalMark = calculateFinalMark ca uca exam

    
    putStrLn "\n----- STUDENT RESULTS -----"
    putStrLn ("Student Name: " ++ name)
    putStrLn ("Controlled Assignment: " ++ show ca ++ "%")
    putStrLn ("Uncontrolled Assignment: " ++ show uca ++ "%")
    putStrLn ("Final Examination: " ++ show exam ++ "%")
    putStrLn ("Final Overall Mark: " ++ show finalMark ++ "%")
