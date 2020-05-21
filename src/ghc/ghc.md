### Compiling with GHC

This example shows how to compile the module Main, which depends on the module Fizzbuzz, with GHC. One would normally use Stack or Cabal, but for such a simple project, we can use GHC from the command line. The two modules are linked below.

1. [Main.hs](Main.hs)
2. [Fizzbuzz.hs](Fizzbuzz.hs)  

To make a binary executable file, we'll call it fb, run the following from the directory containing Main.hs and Fizzbuzz.hs:

```
$ ghc -o fb Main.hs
[1 of 2] Compiling Fizzbuzz         ( Fizzbuzz.hs, Fizzbuzz.o )
[2 of 2] Compiling Main             ( Main.hs, Main.o )
```

then run the executable:

```
$ ./fb
```