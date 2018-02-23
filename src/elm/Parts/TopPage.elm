module Parts.TopPage exposing (topPage)

import Html exposing (..)
import Html.Attributes exposing (..)
import Parts.SecondaryMenu exposing (createSecondaryMenu)


topPage : Html msg
topPage =
    article [ class "page", id "pages-top-0", class "pages-top" ]
        [ div [ class "main" ]
            [ div [ class "line", class "pages-top-top-left" ]
                [ div [ class "vertical" ]
                    []
                , div [ class "horizontal" ]
                    []
                ]
            , div [ class "line", class "pages-top-bottom-left" ]
                [ div [ class "vertical" ]
                    []
                , div [ class "horizontal" ]
                    []
                ]
            , div [ class "line", class "pages-top-top-right" ]
                [ div [ class "vertical" ]
                    []
                , div [ class "horizontal" ]
                    []
                ]
            , div [ class "line", class "pages-top-bottom-right" ]
                [ div [ class "vertical" ]
                    []
                , div [ class "horizontal" ]
                    []
                ]
            , div [ class "pages-top-logo" ]
                [ div [ class "pages-top-logo-image" ]
                    [ img [ src "resources/img/logo.svg" ]
                        []
                    ]
                , div [ class "pages-top-logo-name" ]
                    [ text "PATHFINDER" ]
                ]
            , div [ class "pages-top-urge-scroll" ]
                [ text "SCROLL              "
                , div [ class "pages-top-urge-scroll-image" ]
                    [ img [ src "resources/img/down.svg" ]
                        []
                    ]
                ]
            ]
        , createSecondaryMenu "top" [ "TOP" ] 0
        ]
