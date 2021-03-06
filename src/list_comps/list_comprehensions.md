#### List Comprehensions  

A basic list comprehension. x is drawn from the list \[1..10\] which we say is bound to x.  

```
Prelude> [x*2 | x <- [1..10]]  
[2,4,6,8,10,12,14,16,18,20]
```

Another basic one  

```
Prelude> [x `mod` 3 == 0 | x <- [1..10]]
[False,False,True,False,False,True,False,False,True,False]
```

Now use a predicate to keep only desired elements from the list comprehension. The predicate is after the comma.  

```
Prelude> [x | x <- [1..100], x `mod` 13==0]  
[13,26,39,52,65,78,91]
```



