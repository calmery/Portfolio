module Parts.ProductPage exposing (Product, createProductPage)

import Html exposing (..)
import Html.Attributes exposing (..)
import Parts.SecondaryMenu exposing (createSecondaryMenu)


type alias Product =
    { name : String
    , date : String
    , description : String
    , repository : String
    , url : String
    }


createProductPage : Int -> Product -> Html msg
createProductPage i p =
    article [ class "page", id <| "pages-products-" ++ (toString i), class "pages-products" ]
        [ div [ class "main" ]
            [ div [ class "information" ]
                [ div [ class "name" ]
                    [ text p.name ]
                , div [ class "date" ]
                    [ text p.date ]
                ]
            , div [ class "mockup" ]
                [ div [ class "pc" ]
                    [ div [ class "header" ]
                        [ div [ class "buttons" ]
                            [ div [ class "button red" ]
                                []
                            , div [ class "button yellow" ]
                                []
                            , div [ class "button green" ]
                                []
                            ]
                        ]
                    , div [ class "screen" ]
                        [ div []
                            [ text "NO IMAGE AVAILABLE" ]
                        , img [ src "" ]
                            []
                        ]
                    ]
                , div [ class "sp" ]
                    [ div [ class "statusbar" ]
                        [ img [ class "icon-4g", src "resources/img/4g.svg" ]
                            []
                        , img [ class "icon-wifi", src "resources/img/wifi.svg" ]
                            []
                        , img [ class "icon-battery", src "resources/img/battery.svg" ]
                            []
                        ]
                    , div [ class "screen" ]
                        [ div []
                            [ text "NO IMAGE"
                            , br []
                                []
                            , text "AVAILABLE"
                            ]
                        , img [ src "" ]
                            []
                        ]
                    ]
                ]
            , div [ class "description" ]
                [ text p.description
                ]
            , div [ class "repository" ]
                [ div []
                    [ text p.repository ]
                , div [ class "url" ]
                    [ text p.url ]
                ]
            ]
        , createSecondaryMenu "products" [ "PATHFINDER", "PORCH", "CALMERY.ME", "PAWOPY", "MORIMORIN", "FLOWERTALK", "SPOTLIGHT", "MIZUDERU", "OCTOCATCHER", "KNOKIMOCHI" ] i
        ]
