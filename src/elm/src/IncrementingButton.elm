module IncrementingButton exposing (view)

import Html exposing (Html, button, text)


view : Html msg
view =
    button [] [ text "Clicked 0 times" ]
