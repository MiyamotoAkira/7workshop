module Main where

tryIO = do putStr "Enter your name: " ;
           line <- getLine ;
           let {backwards = reverse line } ;
           return ("Hello. your name backwards is " ++ backwards)
                                        
