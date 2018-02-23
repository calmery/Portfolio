module Parts.AboutPage exposing (aboutPage)

import Html exposing (..)
import Html.Attributes exposing (..)
import Parts.SecondaryMenu exposing (createSecondaryMenu)


aboutPage : Html msg
aboutPage =
    article [ class "page", id "pages-aboutme-0", class "pages-aboutme" ]
        [ div [ class "main" ]
            [ div [ class "pages-aboutme-container" ]
                [ div [ class "pages-aboutme-name" ]
                    [ text "Marei Kikukawa" ]
                , div [ class "pages-aboutme-screenname" ]
                    [ text "Calmery" ]
                , div [ class "label" ]
                    [ text "Location" ]
                , div [ class "text" ]
                    [ text "Fukuoka, Japan" ]
                , div [ class "label" ]
                    [ text "Organization" ]
                , div [ class "text" ]
                    [ text "Sojo University" ]
                , div [ class "text" ]
                    [ text "Department of Computer and Information Sciences" ]
                , div [ class "label" ]
                    [ text "Programming Languages" ]
                , div [ class "text" ]
                    [ text "JavaScript" ]
                , div [ class "text" ]
                    [ text "Elm" ]
                , div [ class "label" ]
                    [ text "Interests" ]
                , div [ class "text" ]
                    [ text "Functional Programming Language" ]
                , div [ class "text" ]
                    [ text "Concurrent Programming" ]
                , div [ class "text" ]
                    [ text "Web Real-Time Communication" ]
                ]
            ]
        , createSecondaryMenu "aboutme" [ "PROFILE" ] 0
        ]
