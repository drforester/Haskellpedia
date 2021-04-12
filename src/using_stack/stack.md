### Building a project with Stack

This example shows how to build a project with stack. Our project in this example consists of Main and its dependency Fizzbuzz. The files containing the these modules are linked below.

1. [Main.hs](Main.hs)
2. [Fizzbuzz.hs](Fizzbuzz.hs)  

Create a new stack project named fbtest:  

```
~$ stack new fbtest
```


Move Main.hs into ./fbtest/app
Move your other modules, in this case only Fizzbuzz.hs, into ./fbtest/src

Ensure that stack is using the correct version of GHC:

```
~$ stack setup
```


Next run:

```
~$ stack init
~$ stack build
```


To run the executable:

```
~$ stack exec fbtest-exe
```


The program then outputs:

```
sylvanix@galaxia:testing_stack$ stack exec fbtest-exe
1
2
Buzz
4
Fizz
Buzz
7
8
Buzz
Fizz
11
Buzz
13
14
FizzBuzz
16
17
Buzz
19
Fizz
Buzz
22
23
```

und so weiter


The actual path of the binary executable file fbtest-exe is:  
```fbtest/.stack-work/dist/x86_64-linux/Cabal-3.0.1.0/build/fbtest-exe``` 

If you want to specify another GHC version from the default, say version 9.0.1, then run this at the command line before building:
```
~$ stack config set resolver ghc-9.0.1
```
