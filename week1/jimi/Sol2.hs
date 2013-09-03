module Sol2 where

import GS
import TAMO

-- Exercise 2.13
check1a = logEquiv1 (\ p -> not True) (\ p -> False)
check1b = logEquiv1 (\ p -> not False) (\ p -> True)
check2 = logEquiv1 (\ p -> p ==> False) (\ p -> not p)
check3a = logEquiv1 (\ p -> p || True) (\ p -> True)
check3b = logEquiv1 (\ p -> p && False) (\p -> False)
check4a = logEquiv1 (\ p -> p || False) (\p -> p)
check4b = logEquiv1 (\ p -> p && True) (\p -> p)
check5 = logEquiv1 (\ p -> p || not p) (\p -> True)
check6 = logEquiv1 (\ p -> p && not p) (\p -> False)


