-- 1.
triangleArea 5 3
-- expected 7.5
triangleArea 4 2
-- expected 4.0
triangleArea 7 8
-- expected 28.0
triangleArea 14 5
-- expected 35.0
triangleArea (-3) 7
-- expected error 'Base and height have to be greater than 0'

-- 2.
changeLetterCase 'c'
-- expected 'C'
changeLetterCase 'A'
-- expected 'a'
changeLetterCase 'f'
-- expected 'F'
changeLetterCase 'G'
-- expected 'g'
changeLetterCase 'w'
-- expected 'W'
changeLetterCase 'X'
-- expected 'x'

-- 3.
letterGrade 95
-- expected 'A'
letterGrade 90
-- expected 'A'
letterGrade 65
-- expected 'D'
letterGrade 50
-- expected 'D'
letterGrade 47
-- expected 'E / F'
letterGrade 150
-- expected error 'Bad numeric grade'
letterGrade (-3)
-- expected 'Bad numeric grade'

-- 4.
highestPowerDivisor 2 50
-- expected 1
highestPowerDivisor 5 250
-- expected 3
highestPowerDivisor 25 10
-- expected 0
highestPowerDivisor 7 100
-- expected 0
highestPowerDivisor (-2) 13
-- expected error 'Input parameters must > 0'

-- 5.
addRange 0 5 1
-- expected 15
addRange 1 20 3
-- expected 70
addRange 20 50 4
-- expected 272
addRange 30 20 3
-- expected error 'First parameter must be ≤ than second parameter'
addRange 10 20 (-2)
-- expected error 'Third parameter must be > than 0'

-- 6.1.
areaTriangle 3 4 6
-- expected 5.332682
areaTriangle 3 4 2
-- expected 2.9047375
areaTriangle 2 7 8
-- expected 6.4371967
areaTriangle 14 15 12
-- expected 78.92679
areaTriangle 7 15 7
-- expected error 'Sides a, b, c do ¬ describe a triangle'

-- 6.2.
areaTriangle' 3 4 6
-- expected 5.332682
areaTriangle' 3 4 2
-- expected 2.9047375
areaTriangle' 2 7 8
-- expected 6.4371967
areaTriangle' 14 15 12
-- expected 78.92679
areaTriangle' 7 15 7
-- expected error 'Sides a, b, c do ¬ describe a triangle'

