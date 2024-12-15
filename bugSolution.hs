The solution involves handling the `Maybe` type appropriately using pattern matching or the `maybe` function.

**Solution using Pattern Matching:**
```haskell
processNumber :: Maybe Int -> Int
processNumber (Just num) = num * 2
processNumber Nothing = 0 -- Handle the Nothing case

main :: IO ()
main = do
  let result = processNumber (Just 5)
  print result
  let result2 = processNumber Nothing
  print result2
```

**Solution using the `maybe` function:**
```haskell
processNumber :: Maybe Int -> Int
processNumber num = maybe 0 (*2) num

main :: IO ()
main = do
  let result = processNumber (Just 5)
  print result
  let result2 = processNumber Nothing
  print result2
```
Both solutions prevent the runtime error by explicitly handling the case where the input is `Nothing`. The first solution uses pattern matching to define separate behavior for `Just` and `Nothing`. The second uses the `maybe` function, which takes a default value, a function, and a `Maybe` value. If the `Maybe` value is `Nothing`, it returns the default value; otherwise, it applies the function to the contained value.