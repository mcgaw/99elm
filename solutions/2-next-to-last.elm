module Main exposing (..)

import Html exposing (text)
import List
import Maybe


findPenultimate : List a -> List a
findPenultimate theList =
    case theList of
        [] ->
            []

        [ a ] ->
            []

        [ a, b ] ->
            [ a ]

        h :: t ->
            findPenultimate t


penultimate : List a -> Maybe a
penultimate theList =
    List.head (findPenultimate theList)


main =
    case penultimate [ 1, 2, 3, 4, 5 ] of
        Just a ->
            text (toString a)

        Nothing ->
            text "No element found"
