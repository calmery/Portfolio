module Parts.Nav exposing (nav)

import Html exposing (Html, div, text)
import Html.Attributes exposing (..)


nav : Html msg
nav =
    Html.nav [ id "primary" ]
        [ div [ class "menu active", id "primary-top-0" ]
            [ text "TOP" ]
        , div [ class "menu", id "primary-aboutme-0" ]
            [ text "ABOUT ME" ]
        , div [ class "menu", id "primary-articles-0" ]
            [ text "ARTICLES" ]
        , div [ class "menu", id "primary-products-0" ]
            [ text "PRODUCTS" ]
        , div [ class "menu", id "primary-experiences-0" ]
            [ text "EXPERIENCES" ]
        , div [ class "menu", id "primary-archives-0" ]
            [ text "ARCHIVES" ]
        , div [ class "menu", id "primary-credit-0" ]
            [ text "CREDIT" ]
        ]
