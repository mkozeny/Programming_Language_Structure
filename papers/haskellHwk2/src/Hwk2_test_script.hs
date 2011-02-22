-- 1. Define a function that computes the sum of the of the squares 1..n, given n\r\n");

sumSquare 5
-- expected 55

sumSquare 8
-- expected 204

sumSquare 10
-- expected 385

sumSquare 13
-- expected 819

sumSquare 15
-- expected 1240

-- another option of sumSquare

sumSquare' 5
-- expected 55

sumSquare' 8
-- expected 204

sumSquare' 10
-- expected 385

sumSquare' 13
-- expected 819

sumSquare' 15
-- expected 1240

-- 2. Define the function that returns the list of all pythagorean triples 
-- whose components greater than 0 and less that the given integer.

pyths 10

--expected
--[(3,4,5),(4,3,5),(6,8,10),(8,6,10)]

pyths 20

--expected
--[(3,4,5),(4,3,5),(5,12,13),(6,8,10),(8,6,10),(8,15,17),(9,12,15),
--(12,5,13),(12,9,15),(12,16,20),(15,8,17),(16,12,20)]

pyths 30

--expected
--[(3,4,5),(4,3,5),(5,12,13),(6,8,10),(7,24,25),(8,6,10),(8,15,17),
--(9,12,15),(10,24,26),(12,5,13),(12,9,15),(12,16,20),(15,8,17),(15,20,25),
--(16,12,20),(18,24,30),(20,15,25),(20,21,29),(21,20,29),(24,7,25),
--(24,10,26),(24,18,30)]

pyths 40

--expected
--[(3,4,5),(4,3,5),(5,12,13),(6,8,10),(7,24,25),(8,6,10),(8,15,17),(9,12,15),
--(10,24,26),(12,5,13),(12,9,15),(12,16,20),(12,35,37),(15,8,17),(15,20,25),
--(15,36,39),(16,12,20),(16,30,34),(18,24,30),(20,15,25),(20,21,29),(21,20,29),
--(21,28,35),(24,7,25),(24,10,26),(24,18,30),(24,32,40),(28,21,35),(30,16,34),
--(32,24,40),(35,12,37),(36,15,39)]

pyths 50

--expected
--[(3,4,5),(4,3,5),(5,12,13),(6,8,10),(7,24,25),(8,6,10),(8,15,17),(9,12,15),
--(9,40,41),(10,24,26),(12,5,13),(12,9,15),(12,16,20),(12,35,37),(14,48,50),
--(15,8,17),(15,20,25),(15,36,39),(16,12,20),(16,30,34),(18,24,30),(20,15,25),
--(20,21,29),(21,20,29),(21,28,35),(24,7,25),(24,10,26),(24,18,30),(24,32,40),
--(27,36,45),(28,21,35),(30,16,34),(30,40,50),(32,24,40),(35,12,37),(36,15,39),
--(36,27,45),(40,9,41),(40,30,50),(48,14,50)]

-- another option of pyths

pyths' 10

--expected
--[(3,4,5),(4,3,5),(6,8,10),(8,6,10)]

pyths' 20

--expected
--[(3,4,5),(4,3,5),(5,12,13),(6,8,10),(8,6,10),(8,15,17),(9,12,15),
--(12,5,13),(12,9,15),(12,16,20),(15,8,17),(16,12,20)]

pyths' 30

--expected
--[(3,4,5),(4,3,5),(5,12,13),(6,8,10),(7,24,25),(8,6,10),(8,15,17),
--(9,12,15),(10,24,26),(12,5,13),(12,9,15),(12,16,20),(15,8,17),(15,20,25),
--(16,12,20),(18,24,30),(20,15,25),(20,21,29),(21,20,29),(24,7,25),
--(24,10,26),(24,18,30)]

pyths' 40

--expected
--[(3,4,5),(4,3,5),(5,12,13),(6,8,10),(7,24,25),(8,6,10),(8,15,17),(9,12,15),
--(10,24,26),(12,5,13),(12,9,15),(12,16,20),(12,35,37),(15,8,17),(15,20,25),
--(15,36,39),(16,12,20),(16,30,34),(18,24,30),(20,15,25),(20,21,29),(21,20,29),
--(21,28,35),(24,7,25),(24,10,26),(24,18,30),(24,32,40),(28,21,35),(30,16,34),
--(32,24,40),(35,12,37),(36,15,39)]

pyths' 50

--expected
--[(3,4,5),(4,3,5),(5,12,13),(6,8,10),(7,24,25),(8,6,10),(8,15,17),(9,12,15),
--(9,40,41),(10,24,26),(12,5,13),(12,9,15),(12,16,20),(12,35,37),(14,48,50),
--(15,8,17),(15,20,25),(15,36,39),(16,12,20),(16,30,34),(18,24,30),(20,15,25),
--(20,21,29),(21,20,29),(21,28,35),(24,7,25),(24,10,26),(24,18,30),(24,32,40),
--(27,36,45),(28,21,35),(30,16,34),(30,40,50),(32,24,40),(35,12,37),(36,15,39),
--(36,27,45),(40,9,41),(40,30,50),(48,14,50)]

--3. A positive integer is perfect if it equals the sum of its factors, excluding the number itself.
-- Define the function that returns the list of all perfect numbers up to the given input number

perfectInt 30

--expected
--[6,28]

perfectInt 100

--expected
--[6,28]

perfectInt 500

--expected
--[6,28,496]

perfectInt 1000

--expected
--[6,28,496]

perfectInt 10000

--expected
--[6,28,496,8128]

-- another option of perfectInt

perfectInt' 30

--expected
--[6,28]

perfectInt' 100

--expected
--[6,28]

perfectInt' 500

--expected
--[6,28,496]

perfectInt' 1000

--expected
--[6,28,496]

perfectInt' 10000

--expected
--[6,28,496,8128]


--4. Define a function that takes a string containing digits and any other characters, and returns a pair
-- where the first component is the list of digits in the string in the order they occur in the input string,
-- and the second pair contains the rest of characters of the string in the order they occur.

splitString "Value#1 value#2 35 !"

--expected
--("1235","Value# value#  !")

splitString "GreAT &&2*30!0 FuN B9o0Y!23#"

--expected
--("23009023","GreAT &&*! FuN BoY!#")

splitString "I23& 1jU1**s12T CA#32me T98#2O s#2Ay# He43LL2o!#?#"

--expected
--("231112329822432","I& jU**sT CA#me T#O s#Ay# HeLLo!#?#")

splitString "T56h44e65 O656nL4y4 W65A245y32 T32o32 HA23vE 2a34 FR#i$En$d I5S3 t[$$]3452O B76e 3A11 FRiE_32nD!(23)"

--expected
--("564465656446524532323223234533452763113223","The OnLy WAy To HAvE a FR#i$En$d IS t[$$]O Be A FRiE_nD!()")

--5. Define merge sort.

mergeSort [2,12,213,45,786,221,13,56,67,64,203]

--expected
--[2,12,13,45,56,64,67,203,213,221,786]

mergeSort [43,123,321,25,76,211,131,12]

--expected
--[12,25,43,76,123,131,211,321]

mergeSort [423,13,31,225,76,21,1231,412,152,2,382,341,65,586,23]

--expected
--[2,13,21,23,31,65,76,152,225,341,382,412,423,586,1231]

--6. (only for Haskell).
--a. Define a function that takes two lists list1 and list2 and returns true if list1’s elements are in list2.

containElements [1,2,5,4,3,4,5,8,7] [1,2,3,4,5,6,7,8,9,0]

--expected
--True

containElements [9,9,4,6,6,6,11] [1,2,3,4,5,6,7,8,9,0]

--expected
--False

containElements [22,34,5,4,3,2,1] [1,2,3,4,5,6,7,8,9,0,34,22]

--expected
--True

containElements [2,5,7,9] [1,2,3,4,5,6,7,8,9,0]

--expected
--True

--b. Define a function that takes two lists list1 and list2 and returns true if list1 appears in list2 as a subsequence. To
--appear as a subsequence means that the elements in list1 appear in the same sequence in list2.

subsequence [22,34,5,4,3,2,1] [1,2,3,4,5,6,7,8,9,0,34,22]

--expected
--False

subsequence [2,5,7,9] [1,2,3,4,5,6,7,8,9,0]

--expected
--True

subsequence [12,15,17,22,35,71] [12,13,14,15,16,17,18,19,20,21,22,33,34,35,76,77,78]

--expected
--False

subsequence [12,15,17,22,35,77] [12,13,14,15,16,17,18,19,20,21,22,33,34,35,76,77,78]

--expected
--True

subsequence  [1,5,7,9,12]  [1,3,4,5,7,8,9,11,12,13]

--expected
--True

subsequence  [1,5,7,9,12]  [1,10,9,5,7,8,11,12,13]

--expected
--False
