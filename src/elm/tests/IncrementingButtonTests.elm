module IncrementingButtonTests exposing (suite)

import Expect exposing (Expectation)
import Html exposing (Html, button, text)
import IncrementingButton
import Test exposing (Test, describe, test)


suite : Test
suite =
    describe "IncrementingButton"
        [ test "initial state is 0" <|
            expectContent "Clicked 0 times" IncrementingButton.view
        ]


expectContent : String -> Html msg -> () -> Expectation
expectContent content buttonView =
    let
        expectedView : Html msg
        expectedView =
            button [] [ text content ]
    in
    \() -> Expect.equal expectedView buttonView
