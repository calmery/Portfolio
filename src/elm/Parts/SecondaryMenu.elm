module Parts.SecondaryMenu exposing (createSecondaryMenu)

import Html exposing (..)
import Html.Attributes exposing (..)


createSecondaryMenu : String -> List String -> Int -> Html msg
createSecondaryMenu category elements i =
    nav [ class "secondary" ]
        ([ div [ class "secondary-label" ]
            [ text "CONTENTS" ]
         , div [ class "secondary-border" ]
            [ div []
                []
            ]
         ]
            ++ (List.indexedMap
                    (\index element ->
                        div
                            [ id <| "category-" ++ category ++ "-" ++ (toString index)
                            , class
                                ("secondary-menu menu"
                                    ++ if index == i then
                                        " active"
                                       else
                                        ""
                                )
                            ]
                            [ div [ class "circle" ]
                                []
                            , div [ class "name" ]
                                [ text element ]
                            ]
                    )
                    elements
               )
        )
