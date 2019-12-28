module Todo where

data Todo = Todo
  { title     :: String
  , completed :: Bool
  } deriving (Eq, Show)
