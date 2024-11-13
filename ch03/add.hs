-- file: ch03/ad.hs
add a b = a + b

myNot True = False
myNot False = True

sumList (x:xs) = x + sumList xs
sumList [] = 0


