-- find second-to-last element

{-|
  If list has more than two elements, make it shorter
  If list has only two elements, return first value
    If it fails this step, then the list has fewer than two elements

  Note: for (x:y:xs), xs=[].  This means that  x:y:xs = x:y:[] = [x,y]
-}
secondLast :: [a] -> a
secondLast (x:y:z:xs) = secondLast(y:z:xs)
secondLast (x:y:xs) = x
secondLast _ = error "Need at least two elements"
