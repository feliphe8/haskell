module Aula7 where

import Data.Monoid
-- data Maybe a = Nothing | Just a
{-*
instance Functor Maybe where
     fmap f Nothing = Nothing
     fmap f (Just x) = Just (f x)
*-}

safeDiv :: Double -> Double -> Maybe (Sum Double)
safeDiv _ 0 = Nothing
safeDiv x y = Just (Sum (x/y))

contaPar :: Int -> Int -> Int
contaPar x y
    | even y = x + 1
    | otherwise = x