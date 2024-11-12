-- file: ch03/FileUnion.hs
type Vector = (Double, Double)

data Shape = Circle Vector Double
             | Poly [Vector]

