module IncrementingButton exposing (Model, Msg(..), main, update, view)

import Browser
import Html exposing (Html, button, text)
import Html.Events exposing (onClick)


type alias Model =
    Int


type Msg
    = Increment


update : Msg -> Model -> ( Model, Cmd Msg )
update msg count =
    case msg of
        Increment ->
            ( count + 1, Cmd.none )


view : Model -> Html Msg
view count =
    button [ onClick Increment ] [ text ("Clicked " ++ String.fromInt count ++ " times") ]


main : Program () Model Msg
main =
    Browser.element
        { init = \_ -> ( 0, Cmd.none )
        , view = view
        , update = update
        , subscriptions = \_ -> Sub.none
        }
