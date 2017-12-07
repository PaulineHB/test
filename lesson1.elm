module Lessons.Lesson1 exposing (..)

import Html exposing (Html, text)


totalPackPrice : Int -> Int -> Int
totalPackPrice quantity price =
  let
    numberOfPacks = quantity // 3
    numberOfNotPacked = rem quantity 3
    paidQuantity = numberOfPacks * 2 + numberOfNotPacked
  in
    price * paidQuantity
  

main : Program Never Model Msg
main =
    Html.program
        { init = initialModel
        , view = view
        , update = \_ model -> model ! []
        , subscriptions = (\_ -> Sub.none)
        }

type alias Model =
    { price : Int
    }

type Displayprice
    = PriceOk Int -- Si le prix est OK
    | Error Int String -- Si on doit remonter une erreur

initialModel : (Model, Cmd Msg)
initialModel = ({ price = 0}, Cmd.none)
 
type Msg
  = Calculateprice

view : Model -> Html Msg
view model =
    text <|
        toString
            [ "Le prix total est de : "

                ++ (toString <| 

                    model.price)
            ]
