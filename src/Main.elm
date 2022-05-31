module Main exposing (..)

import Browser
import Fence exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)


main : Program () Model Msg
main =
    Browser.sandbox
        { init = init
        , update = update
        , view = view
        }


type alias Model =
    Game


type Msg
    = Turn ( Int, Int )
    | Forfeit Stone


init : Model
init =
    Playing { player = Red, grid = init_grid }


update : Msg -> Model -> Model
update msg model =
    init


view : Model -> Html Msg
view model =
    text "hi"
