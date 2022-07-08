module IncrementingButtonTests exposing (suite)

import Expect exposing (Expectation)
import Html exposing (Html, button, text)
import Html.Events exposing (onClick)
import IncrementingButton
import Test exposing (Test, describe, test)


suite : Test
suite =
    describe "IncrementingButton"
        [ testInitialState
        , testIncrement
        ]


testInitialState : Test
testInitialState =
    test "initial state is 0" <|
        expectContent "Clicked 0 times" (IncrementingButton.view 0)


testIncrement : Test
testIncrement =
    let
        ( count, _ ) =
            IncrementingButton.update IncrementingButton.Increment 1
    in
    test "increments count on click" <|
        expectContent "Clicked 2 times" (IncrementingButton.view count)


expectContent : String -> Html IncrementingButton.Msg -> () -> Expectation
expectContent content buttonView =
    let
        expectedView : Html IncrementingButton.Msg
        expectedView =
            button [ onClick IncrementingButton.Increment ] [ text content ]
    in
    \() -> Expect.equal expectedView buttonView
