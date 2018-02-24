module Parts.ArchivePage exposing (Archives, Archive, createArchivesPage)

import Html exposing (..)
import Html.Attributes exposing (..)
import Parts.SecondaryMenu exposing (createSecondaryMenu)


type alias Archive =
    { title : String
    , url : String
    }


type alias Archives =
    { leftContents : List Archive
    , rightContents : List Archive
    }


createArchiveView : Archive -> Html msg
createArchiveView archive =
    div [ class "content" ]
        [ div []
            [ text archive.title
            ]
        , a [ href archive.url, target "_blank" ]
            [ div [ class "url" ]
                [ text archive.url ]
            ]
        ]


createArchivesPage : List String -> Int -> Archives -> Html msg
createArchivesPage secondaryMenu i archives =
    article [ class "page", id <| "pages-archives-" ++ (toString i), class "pages-archives" ]
        [ div [ class "main" ]
            [ div [ class "pages-archives-title" ]
                [ text "ARCHIVES" ]
            , div [ class "pages-archives-container" ]
                [ div [ class "left" ]
                    (List.map createArchiveView archives.leftContents)
                , div [ class "right" ]
                    (List.map createArchiveView archives.rightContents)
                ]
            ]
        , createSecondaryMenu "archives" secondaryMenu i
        ]
