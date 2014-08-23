-- | Main entry point to the application.
module Main where
    
insertAt :: a -> [a] -> Int -> [a]
insertAt x ys     1 = x:ys
insertAt x (y:ys) n = y:insertAt x ys (n-1)

-- | The main entry point.
main :: IO ()
main = do
    putStrLn (insertAt 'j' "de" 2)
