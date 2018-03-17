module Parts.Header exposing (header)

import Html exposing (Html, div, img, text)
import Html.Attributes exposing (..)


header : Html msg
header =
    Html.header []
        [ div [ id "header-image" ]
            [ img [ src "resources/img/logo.svg" ]
                []
            ]
        , div [ id "header-name" ]
            [ text "PORTFOLIO" ]
        ]
