module Todo where

import           Data.Text    (Text)
import           GHC.Generics

data Todo = Todo
  { title     :: Text
  , completed :: Bool
  } deriving (Eq, Show, Generic)
