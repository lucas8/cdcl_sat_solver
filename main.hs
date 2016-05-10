-- vim:foldmethod=marker:

module Main where
import System.Environment
import System.Exit
import SAT.Loader
import SAT.Solver (solve)

main :: IO ()
main = do args <- getArgs
          if length args /= 1 then die "Usage : [program] path_to_dimacs"
                              else return ()
          ld <- load $ head args
          putStrLn $ show $ solve ld
