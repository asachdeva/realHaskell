-- file: ch03/BookStore.hs

-- type synonyms
type CustomerID = Int
type ReviewBody = String
type CardHolder = String
type CardNumber = String
type Address = [String]

data BookInfo = Book Int String [String]
                 deriving (Show)

data BookReview = BookReview BookInfo CustomerID String
data BetterReview = BetterReview BookInfo CustomerID ReviewBody

data BillingInfo = CreditCard CardNumber CardHolder Address
                 | CashOnDelivery
                 | Invoice CustomerID
                   deriving (Show)

type BookRecord = (BookInfo, BetterReview)

