{-# LANGUAGE OverloadedStrings #-}
module TodoAesonSpec where

import           Data.Aeson
import           Data.Text  (Text)
import qualified Data.Text  as T
import           Test.Hspec
import           Todo

spec = describe "Todo Serialization" $ do
  it "should serialize Todo to JSON format" $ do
    -- given
    let todo = Todo "Get milk" False
    -- when
    let json = encode todo
    -- then
    json `shouldBe` "{\"completed\":false,\"title\":\"Get milk\"}"

  it "should deserialize Todo from JSON format" $ do
    -- given
    let json = "{\"completed\":true,\"title\":\"Take trash\"}"
    -- when
    let maybeTodo = decode json
    -- then
    maybeTodo `shouldBe` Just (Todo "Take trash" True)
