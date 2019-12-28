Aeson comes with two typeclasses [ToJSON](http://hackage.haskell.org/package/aeson-1.4.6.0/docs/Data-Aeson.html#t:ToJSON) and [FromJSON](http://hackage.haskell.org/package/aeson-1.4.6.0/docs/Data-Aeson.html#t:FromJSON), for serialization and deserialization (respectively). Once instances for those two typeclasses are created for a given type, it is a matter of calling `encode` and `decode` to map between runtime value and JSON format.
Nothing is stopping us to craft those instances by hand for our `Todo` data type (it's actually a good exercise if you want to have better understanding how `Aeson` works under the hood). For our example however we can leverage build-in mechanism in `Aeson` - ability to create default instances for types that have a `Generic` instance.

`Todo` does not have instance of `Generic` yet but we can quickly derive it. We first need to enable `DeriveGeneric` extension globally for our project.

```yaml
{{ gitDiff package.yaml }}
```

Note: we could have just add pargma to `Todo.hs`, enabling `DeriveGeneric` locally just in that one module. However I find this extension so universal, that I almost always make it default in my projects.

This allows us to derive `Generic` for our `Todo` data type:

```haskell
{{ gitDiff src/Todo.hs }}
```
