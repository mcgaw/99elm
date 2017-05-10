module Main exposing (..)

import Html exposing (text)
import List
import Maybe


findLast : List a -> List a
findLast theList =
    case theList of
        [] -> []
        [x] -> [x]
        _::t -> findLast t 

myLast : List a -> Maybe a
myLast inputList =
    List.head (findLast inputList)


main =
    case myLast [ 1,2,3 ] of
        Just a ->
            text (toString a)

        Nothing ->
            text "No element found"
