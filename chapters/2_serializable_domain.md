We want to serialize and deserialize `Todo` to a `JSON` format. For that, we will use [aeson](http://hackage.haskell.org/package/aeson).

> "A JSON parsing and encoding library optimized for ease of use and high performance."

Let's add `aeson` to our dependency list

```diff
{{ gitDiff package.yaml }}
```
