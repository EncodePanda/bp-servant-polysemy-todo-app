---
title: Building TODO app in Haskell with Polysemy, Aeson, Servant and Brick
subtitle: test
author: Pawel Szulc
tags: haskell, polysemy, aeson, servant, brick, free monads
---

We will be building a simple TODO application in Haskell. Application will be running on a server that will expose its API through http endpoint. That API will be consumed by a terminal user interface application.

This blog post will explore following libraries:

* [Polysemy](http://hackage.haskell.org/package/polysemy) - a library that allows creating powerful DSLs with ability to nicely separate business logic from implementation details. It gives us power to tame effects in a zero-cost, low-bowerplate manner
* [Servant]([https://hackage.haskell.org/package/servant]) - a library that allows defininig services APIs and serving them
* [Aeson](http://hackage.haskell.org/package/aeson) - a JSON parsing and encoding library
* [Brick](https://hackage.haskell.org/package/brick) - a declarative terminal user interface library

Example project is deliberately simple, so that we can focus on the main objectives:

1. Getting started with the previously mentioned libraries
2. Exploring the separation of concerns in Haskell

What you need to know before reading this post:

1. Have a basic understanding of Haskell syntax.
2. Know how to build a Haskell application using [Stack](https://docs.haskellstack.org/en/stable/README/)
3. Understand the concept of GADTs

Both source code and blog post sources are available on [GitHub](https://github.com/rabbitonweb/bp-servant-polysemy-todo-app). Project is divided into small commits so you can follow along.

# Initial a Stack project

We will start with an empty `stack` project

```
{{{{shellOutput tree -I chapters}}}}
```

`stack.yaml`

```
{{ file stack.yaml }}
```
`package.yaml`

```
{{ file package.yaml }}
```

With an empty `Main.hs`

```
{{ file app/Main.hs }}
```

<!--  LocalWords:  hs
 -->
