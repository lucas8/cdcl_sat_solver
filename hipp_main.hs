-- vim:set foldmethod=marker:

module Main where
import Control.Monad
import System.TimeIt
import System.Environment
import System.Exit
import HIPP.Structures
import HIPP.Solver
import HIPP.Sat

compute :: String -> IO ([Haplotype],[(Int,Int)])
compute s = do l <- hload s
               hsolve l

computeAll :: IO [([Haplotype],[(Int,Int)])]
computeAll = forM populations compute

main = do args <- getArgs
          if length args /= 1 then die "Usage : [program] path_to_population"
                              else return ()
          timeIt $ compute (head args) >>= print
