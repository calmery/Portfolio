module Parts.ExperiencePage exposing (Experiences, Experience, createExperiencesPage)

import Html exposing (..)
import Html.Attributes exposing (..)
import Parts.SecondaryMenu exposing (createSecondaryMenu)


type alias Experience =
    { name : String
    , date : String
    , title : String
    , description : String
    , url : String
    }


type alias Experiences =
    { experiences : List Experience
    }


createExperiencesPage : Int -> Experiences -> Html msg
createExperiencesPage i experiences =
    article [ class "page", id <| "pages-experiences-" ++ (toString i), class "pages-experiences" ]
        [ div [ class "main" ]
            [ div [ class "pages-experiences-line" ]
                []
            , div [ class "pages-experiences-line-bottom" ]
                []
            , div [ class "pages-experiences-contents" ]
                (List.map
                    (\experience ->
                        div [ class "content" ]
                            [ div [ class "left" ]
                                [ div []
                                    [ text experience.name ]
                                , div [ class "date" ]
                                    [ text experience.date ]
                                ]
                            , div [ class "middle" ]
                                [ div [ class "circle" ]
                                    [ div [ class "inner-circle" ]
                                        []
                                    ]
                                ]
                            , div [ class "right" ]
                                [ div []
                                    [ text experience.title ]
                                , div [ class "description" ]
                                    [ text experience.description ]
                                , div [ class "url" ]
                                    [ text experience.url ]
                                ]
                            ]
                    )
                    experiences.experiences
                )
            ]
        , createSecondaryMenu "experiences" [ "PAGE 0", "PAGE 1" ] i
        ]
