We want to serialize `Todo` to and from `JSON`. We will use [aeson](http://hackage.haskell.org/package/aeson) library for this task.

> "A JSON parsing and encoding library optimized for ease of use and high performance."

We start by adding `aeson` to our dependency list

```diff
{{ gitDiff package.yaml }}
```
