module Parts.CreditPage exposing (creditPage)

import Html exposing (..)
import Html.Attributes exposing (..)
import Parts.SecondaryMenu exposing (createSecondaryMenu)


creditPage : Html msg
creditPage =
    article [ class "page", id "pages-credit-0", class "pages-credit" ]
        [ div [ class "main" ]
            [ div [ class "pages-credit-title" ]
                [ text "CREDIT" ]
            , div [ class "pages-credit-container" ]
                [ div [ class "left" ]
                    [ div [ class "content" ]
                        [ div []
                            [ span [ class "p" ]
                                [ text "iOS 8 Status Bars Sketch Resource by Aubrey Johnson" ]
                            ]
                        , div [ class "url" ]
                            [ text "https://www.sketchappsources.com/free-source/1112-ios8-status-bar-sketch-freebie-resource.html" ]
                        ]
                    ]
                , div [ class "right" ]
                    [ div [ class "content" ]
                        [ div []
                            [ span [ class "p" ]
                                [ text "iOS 8 Status Bars Sketch Resource by Aubrey Johnson" ]
                            ]
                        , div [ class "url" ]
                            [ text "https://www.sketchappsources.com/free-source/1112-ios8-status-bar-sketch-freebie-resource.html" ]
                        ]
                    , div [ class "content" ]
                        [ div []
                            [ span [ class "p" ]
                                [ text "iOS 8 Status Bars Sketch Resource by Aubrey Johnson" ]
                            ]
                        , div [ class "url" ]
                            [ text "https://www.sketchappsources.com/free-source/1112-ios8-status-bar-sketch-freebie-resource.html" ]
                        ]
                    ]
                ]
            ]
        , createSecondaryMenu "credit" [ "0" ] 0
        ]
