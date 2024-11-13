-- file: ch03/BookStore.hs
-- type synonyms
type CustomerID = Int

type ReviewBody = String

type CardHolder = String

type CardNumber = String

type Address = [String]

data BookInfo =
  Book Int String [String]
  deriving (Show)

data BookReview =
  BookReview BookInfo CustomerID String

data BetterReview =
  BetterReview BookInfo CustomerID ReviewBody

data BillingInfo
  = CreditCard CardNumber CardHolder Address
  | CashOnDelivery
  | Invoice CustomerID
  deriving (Show)

type BookRecord = (BookInfo, BetterReview)

bookID (Book id title authors) = id

bookTitle (Book id title authors) = title

bookAuthors (Book id title authors) = authors

data BookRecord2 =
  (,) BookInfo BetterReview
