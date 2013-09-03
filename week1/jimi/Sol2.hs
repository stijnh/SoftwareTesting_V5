module Sol2 where

import GS
import TAMO

-- Exercise 2.13
check13_1a = logEquiv1 (\ p -> not True) (\ p -> False)
check13_1b = logEquiv1 (\ p -> not False) (\ p -> True)
check13_2 = logEquiv1 (\ p -> p ==> False) (\ p -> not p)
check13_3a = logEquiv1 (\ p -> p || True) (\ p -> True)
check13_3b = logEquiv1 (\ p -> p && False) (\p -> False)
check13_4a = logEquiv1 (\ p -> p || False) (\p -> p)
check13_4b = logEquiv1 (\ p -> p && True) (\p -> p)
check13_5 = logEquiv1 (\ p -> p || not p) (\p -> True)
check13_6 = logEquiv1 (\ p -> p && not p) (\p -> False)

-- Exercise 2.15
nor :: [Bool] -> Bool
nor x = not (or x)

propContradict1 :: (Bool -> Bool) -> Bool
propContradict1 bf = nor [bf p | p <- [True, False]]

propContradict2 :: (Bool -> Bool -> Bool) -> Bool
propContradict2 bf = nor [bf p q | p <- [True, False], q <- [True, False]]

propContradict3 :: (Bool -> Bool -> Bool -> Bool) -> Bool
propContradict3 bf = nor [bf p q r | p <- [True, False],
                                     q <- [True, False],
                                     r <- [True, False]]

-- Exercise 2.20
check20_1 = logEquiv2 (\ p q -> (not p) ==> q) (\ p q -> p ==> (not q))
check20_2 = logEquiv2 (\ p q -> (not p) ==> q) (\ p q -> q ==> (not p))
check20_3 = logEquiv2 (\ p q -> (not p) ==> q) (\ p q -> (not q) ==> p)
check20_4 = logEquiv3 (\ p q r -> p ==> (q ==> r)) (\ p q r -> q ==> (p ==> r))
check20_5 = logEquiv3 (\ p q r -> p ==> (q ==> r)) (\ p q r -> (p ==> q) ==> r)
check20_6 = logEquiv2 (\ p q -> (p ==> q) ==> p) (\ p q -> p)
check20_7 = logEquiv3 (\ p q r -> p || q ==> r) (\ p q r -> (p ==> r) && (q ==> r))








