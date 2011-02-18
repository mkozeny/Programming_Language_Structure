import Char(isLower,toUpper,toLower)

-- this function count area of triangle clasiclly s= (a*v)/2
-- input parameters are Floats which are >0 (there is a control if parameters are > 0) 
-- and return value has also type Float
triangleArea :: Float -> Float -> Float
triangleArea a v = if ((a <= 0) || (v <= 0)) 
		  then error "Base and height have to be greater than 0"
		  else (a * v) / 2

-- this function  change the letter case
-- as an input char is expected and according to his case will be this letter changed 
-- to another case
-- if is in lower case, than is changed to upper case, otherwise is expected as char 
-- in upper case and changed to lower case
changeLetterCase :: Char -> Char
changeLetterCase a = if isLower a
                    then toUpper a
                    else toLower a

-- as input is expected integer from 0 to 100
-- returned value is String according to input number, if is lower than 0 or greater 
-- than 100, an error is thrown
letterGrade :: Int -> String
letterGrade grade
     | grade >= 90 && grade <= 100 = "A"
     | grade >= 80 && grade <= 89 = "B"
     | grade >= 70 && grade <= 79 = "C"
     | grade >= 60 && grade <= 69 = "D"
     | grade >= 0 && grade <= 59 = "E / F"
     | otherwise = error "Bad numeric grade"

-- as an input two integers >0(there is a control if parameters are > 0) are expected
-- and returned value is also integer
-- if first number modulo second number is nonzero, then the power is zero
-- otherwise is first number modulo second number is zero, the power is at least 1
-- so the result is 1 + and recursively count the power for first number
-- and for second number divided by first number




highestPowerDivisor :: Int -> Int -> Int
highestPowerDivisor number1 number2
     | number1 <= 0 || number2 <= 0 = error "Input parameters must > 0"
     | mod number2 number1 /= 0 = 0
     | mod number2 number1 == 0 = 1 + highestPowerDivisor number1 (div number2 number1)

-- as an input 3 integers are expected
-- return value is also integer
-- if first argument is greater than second argument or third argument lower than zero,
-- an error is thrown
-- if first argument plus third argument are higher than second argument,
-- function returns first argument because second argument is border of range
-- else if first argument plus third argument are equal to second argument, function
-- returns first argument plus second argument
-- (it is also possible return twice first argument plus third argument)
-- else if first plus third argument is lower than second argument,
-- we add first argument to recursion call where first argument is previous first argument
-- plus added range ( = third argument ), other parameters are same
addRange :: Int -> Int -> Int -> Int
addRange a b c
    | a > b = error "First parameter must be <= than second parameter"
    | c < 0 = error "Third parameter must be > than 0"
    | a + c > b = a
    | a + c == b = a + b
    | a + c < b = a + addRange (a + c) b c

-- this function expects three Floats which are length of concrete side of triangle
-- and returns value which is also float
-- firstly it is tested if values of sides describe a trinagle
-- if yes, area of triangle is counted using parameter 's' counted in 'where' clause
areaTriangle :: Float  -> Float -> Float -> Float
areaTriangle a b c
        | a <= 0 || b <= 0 || c <= 0 = error "Every side must be > 0"
        | (a + b <= c) || (a + c <= b) || (b + c <= a) =
		 error "Sides a, b, c do not describe a triangle"
        |otherwise = sqrt(s*(s-a)*(s-b)*(s-c))
        where s= (a+b+c)/2

-- this function as previous function expects three Floats which are length
-- of concrete side of triangle and returns value which is also float
-- also here it is firstly tested if values of sides describe a trinagle
-- if yes, area of triangle is counted in 'in' clause using parameter 's'
-- counted in 'let' clause
areaTriangle' :: Float -> Float -> Float -> Float
areaTriangle' a b c
     | a <= 0 || b <= 0 || c <= 0 = error "Every side must be > 0"
     |(a + b <= c) || (a + c <= b) || (b + c <= a) =
		 error "Sides a, b, c do not describe a triangle"
     |otherwise = let s=(a+b+c)/2
     in  sqrt(s*(s-a)*(s-b)*(s-c))
