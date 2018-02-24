module Main exposing (..)

import Html exposing (Html, program, section)
import Html.Attributes exposing (id)
import Port exposing (ready)
import Parts.Header exposing (header)
import Parts.Nav exposing (nav)
import Parts.Footer exposing (footer)
import Pages.TopPage exposing (topPages)
import Pages.AboutPage exposing (aboutPages)
import Pages.ArticlePage exposing (articlePages)
import Pages.ProductPage exposing (productPages)
import Pages.ExperiencePage exposing (experiencePages)
import Pages.ArchivePage exposing (archivePages)
import Pages.CreditPage exposing (creditPages)


type alias Model =
    String


pages : Html msg
pages =
    section [ id "pages" ]
        (topPages
            ++ aboutPages
            ++ articlePages
            ++ productPages
            ++ experiencePages
            ++ archivePages
            ++ creditPages
        )


view : Model -> Html msg
view model =
    section [ id "main" ]
        [ header
        , nav
        , pages
        , footer
        ]


main : Program Never Model msg
main =
    program
        { init = "" ! [ ready () ]
        , view = view
        , update = (\msg model -> model ! [])
        , subscriptions = always Sub.none
        }
