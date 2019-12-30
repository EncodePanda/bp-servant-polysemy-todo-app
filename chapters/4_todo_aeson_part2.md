Now we can simply derive instances of `ToJSON` and `FromJSON` for our `Todo`

```haskell
{{ file src/Todo.hs }}
```

Let's verify that they work as intended

```haskell
{{ file test/TodoAesonSpec.hs }}
```
