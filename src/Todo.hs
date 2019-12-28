module Todo where

import           Data.Text (Text)

data Todo = Todo
  { title     :: Text
  , completed :: Bool
  } deriving (Eq, Show)
