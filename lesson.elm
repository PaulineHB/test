module Lessons.Lesson exposing (..)

--import Html exposing (text)


four : Int
four =
    2 + 2


addone : number -> number
addone four =
    four + 1


ispositive : Int -> Bool
ispositive four =
    four > 0


isateenager : Int -> Bool
isateenager age =
    (age > 12) && (age < 18)


capitalize : String -> String
capitalize word =
    String.toUpper (String.left 1 word) ++ String.dropLeft 1 word

findminimum : List Int -> Maybe Int
findminimum numberlist = 
    case numberlist of
        _ ->
            List.minimum [9,4,5,6]
totalpacks:Int->Int
totalpacks quantity=
  quantity//3

quantitynotpacks:Int->Int
quantitynotpacks quantity =
  quantity-((totalpacks quantity)*3)

totalnotpacksprice : Int->Int->Int
totalnotpacksprice quantity price=
  (quantitynotpacks quantity)*price

totalpackprice : Int -> Int -> Int
totalpackprice quantity price=
  (totalpacks quantity)*(price*2)



totalprice : Int->Int->Int
totalprice quantity price =
  --if quantity <1 && price <0 then
  --  ?????
  --else
    if quantity>2 then 
     (totalpackprice quantity price)+(totalnotpacksprice quantity price)

    else 
      quantity*price




--main : Html.Html msg
--main =
--    text <|
--        toString
            --[ "Résultat four: "
            --    ++ (toString four)
            --, "Résultat addone four : "
            --    ++ (toString <| addone four)
            --, "Résultat ispositive four : "
            --    ++ (toString <| ispositive (-1))
            --, "Résultat isatennager age : "
            --    ++ (toString <| isateenager 11)
            --, "Résultat capitalize : "
            --    ++ capitalize "arnaud!!!!!!!!!!!!!!!!"
            --["Résultat totalprice 1  1 : "
            --    ++ (toString <| totalprice 1 1)            ]
