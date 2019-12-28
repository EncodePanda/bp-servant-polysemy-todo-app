# Domain

We start by defining our main domain object `Todo`.

```haskell
{{ file src/Todo.hs }}
```

`Todo` has a `title` field that will be displayed on a list of TODO items. It also has a flag `completed` indicating whether item was already completed or not.

We are using `Text` from [Data.Text](https://hackage.haskell.org/package/text) package, which we have to add to our dependency list

```yaml
{{ gitDiff package.yaml }}
```
