module Parts.CreditPage exposing (creditPage)

import Html exposing (..)
import Html.Attributes exposing (..)
import Parts.SecondaryMenu exposing (createSecondaryMenu)
import Tuple


creditPage : List String -> Int -> List ( String, String ) -> List ( String, String ) -> Html msg
creditPage secondaryMenu i creditLeft creditRight =
    article [ class "page", id "pages-credit-0", class "pages-credit" ]
        [ div [ class "main" ]
            [ div [ class "pages-credit-title" ]
                [ text "CREDIT" ]
            , div [ class "pages-credit-container" ]
                [ div [ class "left" ]
                    (List.map
                        (\credit ->
                            div [ class "content" ]
                                [ div []
                                    [ span [ class "p" ]
                                        [ text <| Tuple.first credit ]
                                    ]
                                , a [ href <| Tuple.second credit, target "_blank" ]
                                    [ div [ class "url" ]
                                        [ text <| Tuple.second credit ]
                                    ]
                                ]
                        )
                        creditLeft
                    )
                , div [ class "right" ]
                    (List.map
                        (\credit ->
                            div [ class "content" ]
                                [ div []
                                    [ span [ class "p" ]
                                        [ text <| Tuple.first credit ]
                                    ]
                                , a [ href <| Tuple.second credit, target "_blank" ]
                                    [ div [ class "url" ]
                                        [ text <| Tuple.second credit ]
                                    ]
                                ]
                        )
                        creditRight
                    )
                ]
            ]
        , createSecondaryMenu "credit" secondaryMenu i
        ]
