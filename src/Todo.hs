module Todo where

import           Data.Aeson.Types
import           Data.Text        (Text)
import           GHC.Generics

data Todo = Todo
  { title     :: Text
  , completed :: Bool
  } deriving (Eq, Show, Generic)

instance ToJSON Todo
instance FromJSON Todo
