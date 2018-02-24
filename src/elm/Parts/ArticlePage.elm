module Parts.ArticlePage exposing (Article, Articles, createArticlePage)

import Html exposing (..)
import Html.Attributes exposing (..)
import Parts.SecondaryMenu exposing (createSecondaryMenu)


type alias Article =
    { title : String
    , body : String
    , date : String
    , url : String
    }


type alias Articles =
    { name : String
    , url : String
    , count : Int
    , articles : List Article
    }


createArticlePage : List String -> Int -> Articles -> Html msg
createArticlePage secondaryMenu i articles =
    article [ class "page", id <| "pages-articles-" ++ (toString i), class "pages-articles" ]
        [ div [ class "main" ]
            [ div [ class "pages-articles-container" ]
                [ div [ class "pages-articles-title" ]
                    [ text articles.name ]
                , div [ class "pages-articles-description" ]
                    [ text <| "THERE ARE " ++ (toString articles.count) ++ " ARTICLES ON " ++ articles.name ]
                , div [ class "pages-articles-articles" ]
                    ((List.map
                        (\aa ->
                            div [ class "article" ]
                                [ div [ class "title" ]
                                    [ text aa.title
                                    ]
                                , div [ class "body" ]
                                    [ text aa.body
                                    ]
                                , div [ class "date" ]
                                    [ text aa.date ]
                                , a [ href aa.url, target "_blank" ]
                                    [ div [ class "continue" ]
                                        [ text "続きを読む" ]
                                    ]
                                ]
                        )
                        articles.articles
                     )
                        ++ [ div [ class "article" ]
                                [ div [ class "more" ]
                                    [ a [ href articles.url, target "_blank" ]
                                        [ img [ src "resources/img/href.svg" ]
                                            []
                                        , div [ class "text" ]
                                            [ text "READ MORE" ]
                                        ]
                                    ]
                                ]
                           ]
                    )
                ]
            ]
        , createSecondaryMenu "articles" secondaryMenu i
        ]
