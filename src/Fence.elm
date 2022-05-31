module Fence exposing (..)

import Vector9 exposing (..)


type Stone
    = Red
    | Green
    | Black


type Intersection
    = Empty
    | Occupied Stone


type alias Grid =
    Vector9 (Vector9 Intersection)


init_grid : Grid
init_grid =
    let
        empty_row =
            repeat Empty

        empty_grid =
            repeat empty_row

        middle_row =
            empty_row
                |> set Index3 (Occupied Red)
                |> set Index5 (Occupied Green)
    in
    set Index4 middle_row empty_grid


type Game
    = Playing { player : Stone, grid : Grid }
    | End Stone
