### Implementing Some Prelude Functions Using Recursion

<br/><br/>

#### Repeat  

```
repeat' :: a -> [a]  
repeat' x = x:repeat' x
```
<br>

#### reverse

```
reverse' :: [a] -> [a]  
reverse' [] = []  
reverse' (x:xs) = reverse' xs ++ [x]
```
<br>

#### replicate  

```
replicate' :: (Num i, Ord i) => i -> a -> [a]  
replicate' n x  
    | n <= 0    = []  
    | otherwise = x:replicate' (n-1) x
```
<br>

#### take  

```
take' :: (Num i, Ord i) => i -> [a] -> [a]  
take' n _  
    | n <= 0   = []  
take' _ []     = []  
take' n (x:xs) = x : take' (n-1) xs
```    
<br>

#### zip  

```
zip' :: [a] -> [b] -> [(a,b)]  
zip' _ [] = []  
zip' [] _ = []  
zip' (x:xs) (y:ys) = (x,y):zip' xs ys
```
<br>

#### elem  

```
elem' :: (Eq a) => a -> [a] -> Bool  
elem' a [] = False  
elem' a (x:xs)  
    | a == x    = True  
    | otherwise = a `elem'` xs
```
<br>

#### quicksort (ok, not really in the prelude)

```
-- choosing the list head to be the pivot element
quicksort :: (Ord a) => [a] -> [a]  
quicksort [] = []  
quicksort (x:xs) = smallers ++ [x] ++ largers
                   where smallers = quicksort [a | a <- xs, a <= x]
                         largers = quicksort [a | a <- xs, a > x]
```
<br>

#### maximum  

```
maximum' :: (Ord a) => [a] -> a  
maximum' [] = error "maximum of empty list"  
maximum' [x] = x  
maximum' (x:xs)   
    | x > maxTail = x  
    | otherwise = maxTail  
    where maxTail = maximum' xs
```
<br>

#### zipWith

```
zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]  
zipWith' _ [] _ = []  
zipWith' _ _ [] = []  
zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys
```
<br>
