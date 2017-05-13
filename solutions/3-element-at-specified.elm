module Main exposing (..)

import Html
import List
import Maybe


nextElement : List a -> Int -> Maybe a
nextElement aList distance =
    if distance == 1 then
        List.head aList
    else
        case aList of
            [] ->
                Nothing

            [ a ] ->
                Nothing

            _ :: t ->
                nextElement t (distance - 1)


elementAt : List a -> Int -> Maybe a
elementAt xs n =
    nextElement xs n


main : Html.Html a
main =
    Html.text <|
        case test of
            0 ->
                "Your implementation passed all tests."

            1 ->
                "Your implementation failed one test."

            x ->
                "Your implementation failed " ++ (toString x) ++ " tests."


test : Int
test =
    List.length <|
        List.filter ((==) False)
            [ elementAt [ 1, 2, 3, 4 ] 2 == Just 2
            , elementAt [ 1 ] 2 == Nothing
            , elementAt [] 2 == Nothing
            , elementAt [] (-1) == Nothing
            , elementAt [ 'a', 'b', 'c' ] 2 == Just 'b'
            ]
