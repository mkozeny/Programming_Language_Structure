import Text.Regex.Base
import Text.Regex.Posix
import System.IO
import System.Environment
import Data.Char
import Data.List(isPrefixOf)

--here is used code for splitting a string
--published on http://hackage.haskell.org/packages/archive/MissingH/1.0.0/doc/html/src/Data-List-Utils.html#split
startswith :: Eq a => [a] -> [a] -> Bool
startswith = isPrefixOf


spanList :: ([a] -> Bool) -> [a] -> ([a], [a])
spanList _ [] = ([],[])
spanList func list@(x:xs) =
    if func list
       then (x:ys,zs)
       else ([],list)
    where (ys,zs) = spanList func xs

breakList :: ([a] -> Bool) -> [a] -> ([a], [a])
breakList func = spanList (not . func)

split :: Eq a => [a] -> [a] -> [[a]]
split _ [] = []
split delim str =
    let (firstline, remainder) = breakList (startswith delim) str
        in
        firstline : case remainder of
                                   [] -> []
                                   x -> if x == delim
                                        then [] : []
                                        else split delim
                                                 (drop (length delim) x)

--end of using code for splitting


--this function controls by reg. expression
--if is the input string email address
isEmail :: String -> Bool
isEmail text = if (text =~ "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+.[a-zA-Z]{2,4}")
                then True
               else False
--this function only controls if input string contains '@'
containsAt :: String -> Bool
containsAt [] = False
containsAt (x:xs) = if x == '@'
                          then True
                       else
                           containsAt xs

--this function takes as parameter list of strings
--and send recursively every element of this list to function 'convertToListOfPairs'
--before that this string is split into elements by space delimiter and controlled
--in function 'controlList'
nameList :: [String] -> [(String,[String])]
nameList [] = []
nameList (x:xs) = convertToListOfPairs (controlList(split " " x)) : (nameList xs)


--this function recursively control, if input list does not contain elements
--in which ',' appears; if some string contains that character,
--this function split it and controls if next string after ',' is not an empty string
--if yes, than empty string is omitted, else controls if string is not empty itself,
--else is string put back to list
controlList :: [String] -> [String]
controlList [] = []
controlList (x:xs) = if (length (split "," x)) > 1
                        then (omitEmptyString (split "," x)) ++ (controlList xs)
      	             else if x == ""
                        then controlList xs
                       else x : (controlList xs)

--this function only controls if in input list of strings is not empty string
--if yes, then it is omitted
omitEmptyString :: [String] -> [String]
omitEmptyString [] = []
omitEmptyString (x:xs) = if x == ""
                        then omitEmptyString xs
                       else x:(omitEmptyString xs)


--this function creates recursively a tuple of string and list of strings
--by going through this list and controling if actual element does not contain '@'(or is not email address)
--if so, then is concatenated to first string in tuple,
--if not then is added to second element of tuple - list of mail address
convertToListOfPairs :: [String] -> (String,[String])
convertToListOfPairs [] = ("",[])
convertToListOfPairs (x:xs) = if not (isEmail x)
                       then (x ++ " " ++ (fst (convertToListOfPairs xs)),  snd (convertToListOfPairs xs))
                       else (fst (convertToListOfPairs xs),  x: (snd (convertToListOfPairs xs)) )


--this function format first element of input tuple to html source
formatNames :: [(String,[String])] -> String
formatNames [] = ""
formatNames (x:xs) = if (length (fst x) > 0)
                        then "<li>" ++ (fst x) ++ (formatMails (snd x)) ++ "</li>" ++ (formatNames xs)
                     else ""


--this function format element of input list to html source as link to email address
formatMails :: [String] -> String
formatMails [] = ""
formatMails (x:xs) = " , <a href='mailto:" ++ x ++ "'>" ++ x ++ "</a>" ++ (formatMails xs)
                     
--this function initializes generating html source
generateHTML :: String -> String
generateHTML text = "<ul>" ++ (formatNames (nameList (split "\n" text))) ++ "</ul>"


--main action for calling(and compiling)
main = do htmlEmailDirectory


--action for reading input parameters
--(first is name of source text file and second is name of target html file)
--and calling function for generating html from provided source file
htmlEmailDirectory :: IO ()
htmlEmailDirectory = do
    (inputFile:outputFile:_) <- getArgs
    text <- readFile inputFile
    writeFile outputFile (generateHTML text)
    return ()
