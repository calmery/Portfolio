port module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)


port ready : () -> Cmd msg


type alias Model =
    String


type Msg
    = NoOp


init : ( Model, Cmd Msg )
init =
    ( "", ready () )


createSecondaryMenu : String -> List String -> Int -> Html Msg
createSecondaryMenu category elements i =
    nav [ class "secondary" ]
        ([ div [ class "secondary-label" ]
            [ text "CONTENTS" ]
         , div [ class "secondary-border" ]
            [ div []
                []
            ]
         ]
            ++ (List.indexedMap
                    (\index element ->
                        div
                            [ id <| "category-" ++ category ++ "-" ++ (toString index)
                            , class
                                ("secondary-menu menu"
                                    ++ if index == i then
                                        " active"
                                       else
                                        ""
                                )
                            ]
                            [ div [ class "circle" ]
                                []
                            , div [ class "name" ]
                                [ text element ]
                            ]
                    )
                    elements
               )
        )


topPage : Html Msg
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


aboutPage : Html Msg
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



-- Article


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


createArticlePage : Int -> Articles -> Html Msg
createArticlePage i articles =
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
                                , a [ href aa.url ]
                                    [ div [ class "continue" ]
                                        [ text "続きを読む" ]
                                    ]
                                ]
                        )
                        articles.articles
                     )
                        ++ [ div [ class "article" ]
                                [ div [ class "more" ]
                                    [ a [ href articles.url ]
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
        , createSecondaryMenu "articles" [ "QIITA", "HATENA BLOG" ] i
        ]



-- Product


type alias Product =
    { name : String
    , date : String
    , description : String
    , repository : String
    , url : String
    }


createProductPage : Int -> Product -> Html Msg
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



-- Experiences


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


createExperiencesPage : Int -> Experiences -> Html Msg
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



-- Archive


type alias Archive =
    { title : String
    , url : String
    }


type alias Archives =
    { leftContents : List Archive
    , rightContents : List Archive
    }


createArchiveView : Archive -> Html Msg
createArchiveView archive =
    div [ class "content" ]
        [ div []
            [ text archive.title
            ]
        , div [ class "url" ]
            [ text archive.url ]
        ]


createArchivesPage : Int -> Archives -> Html Msg
createArchivesPage i archives =
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
        , createSecondaryMenu "archives" [ "PAGE 0", "PAGE 1" ] i
        ]



-- Credit


creditPage : Html Msg
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



-- Component


headerView : Html Msg
headerView =
    header []
        [ div [ id "header-image" ]
            [ img [ src "resources/img/logo.svg" ]
                []
            ]
        , div [ id "header-name" ]
            [ text "PATHFINDER" ]
        ]


navView : Html Msg
navView =
    nav [ id "primary" ]
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


footerView : Html Msg
footerView =
    footer []
        [ div [ class "link" ]
            [ a [ href "https://facebook.com/marei.kikukawa" ]
                [ img [ src "resources/img/facebook.svg" ]
                    []
                ]
            ]
        , div [ class "link" ]
            [ a [ href "https://twitter.com/calmeryme" ]
                [ img [ src "resources/img/twitter.svg" ]
                    []
                ]
            ]
        , div [ class "link" ]
            [ a [ href "https://github.com/calmery" ]
                [ img [ src "resources/img/github.svg" ]
                    []
                ]
            ]
        , div [ class "link" ]
            [ a [ href "https://qiita.com/calmery" ]
                [ img [ src "resources/img/qiita.svg" ]
                    []
                ]
            ]
        , div [ class "link" ]
            [ a [ href "http://calmery.hatenablog.com" ]
                [ img [ src "resources/img/blog.svg" ]
                    []
                ]
            ]
        ]


view : Model -> Html Msg
view model =
    section [ id "main" ]
        [ headerView
        , navView
        , section [ id "pages" ]
            [ topPage
            , aboutPage
            , createArticlePage 0 <|
                Articles "QIITA" "https://qiita.com/calmery" 2 <|
                    [ Article "Hyperappを読む" "読んだのでまとめる．Hyperappとは 2018 年は Hyperapp の年だ を読むとわかる．読んでみる 読みやすさのために少し書き換えている．h 関数 h 関数は与えられた引数から Hyperapp の仮想 DOM…" "Dec. 31, 2017" "https://qiita.com/calmery/items/e5015bf2dcefedccddd5"
                    , Article "ElmとElectronでデスクトップアプリを作ってみた" "これは Elm Advent Calendar 2017 の 15 日目の記事です．はじめに Elm と Electron を使って Twitter のハッシュタグである #elm をストリーミングする…" "Dec. 15, 2017" "https://qiita.com/calmery/items/b80ee5a9c3aa0b268d02"
                    ]
            , createArticlePage 1 <|
                Articles "HATENA BLOG" "http://calmery.hatenablog.com" 34 <|
                    [ Article "LINEの40万インターンに参加してきた" "LINE Summer Internship 2017 のエンジニア就業コース，通称 40 万インターンに参加してきた．詳しくは LINE株式会社 | インターンシップ 2017 エンジニア就…" "Sep. 3, 2017" "http://calmery.hatenablog.com/entry/2017/09/03/190002"
                    , Article "稲荷山登山チャレンジ（成功）" "友達と京都旅行，伏見稲荷大社に行ってきた．以前来たときは時間がなくて本殿で引き返したのだけど今回は登ることができた．満足．夕方と翌日のお昼，合わせて二回登ったのだけど雰囲気が違…" "Feb. 25, 2017" "http://calmery.hatenablog.com/entry/2017/02/25/035839"
                    ]
            , createProductPage 0 <| Product "PATHFINDER" "2018" "Elm を使用して開発しました" "calmery/Portfolio" "https://github.com/calmery/Portfolio"
            , createProductPage 1 <| Product "PORCH" "2018" "WebRTC を使用したチャット" "calmery/Porch" "https://github.com/calmery/Porch"
            , createProductPage 2 <| Product "CALMERY.ME" "2017" "Web サイト" "calmery/calmery.me" "https://github.com/calmery/calmery.me"
            , createProductPage 3 <| Product "PAWOPY" "2017" "Python から Pawoo の API を使用するためのライブラリ" "calmery/pawopy" "https://github.com/calmery/pawopy"
            , createProductPage 4 <| Product "MORIMORIN" "2016" "動的に現在位置の 3D マップを生成する" "calmery/Morimorin" "https://github.com/calmery/Morimorin"
            , createProductPage 5 <| Product "FLOWERTALK" "2016" "JPHACKS 2016 Award Day. お花とお話しする" "calmery/FlowerTalk" "https://github.com/calmery/FlowerTalk"
            , createProductPage 6 <| Product "SPOTLIGHT" "2016" "Twitter で検索を行う" "calmery/LegacySpotlight" "https://github.com/calmery/LegacySpotlight"
            , createProductPage 7 <| Product "MIZUDERU" "2016" "水が出るか出ないか，投稿によるマッピング" "calmery/Mizuderu" "https://github.com/calmery/Mizuderu"
            , createProductPage 8 <| Product "OCTOCATCHER" "2016" "オクトキャットをランダムで取得する" "calmery/Octocatcher" "https://github.com/calmery/Octocatcher"
            , createProductPage 9 <| Product "KNOKIMOCHI" "2016" "木の遠隔で監視する" "" ""
            , createExperiencesPage 0 <|
                Experiences
                    [ Experience "ソロプチミスト日本財団" "Nov. 17, 2017" "学生ボランティア賞" "サイバーボランティアで開発したアプリケーションとその活動内容について表彰を受けた．" "http://www.soro-jpf.net/project/assist_list/"
                    , Experience "ソロプチミスト日本財団" "Nov. 17, 2017" "学生ボランティア賞" "サイバーボランティアで開発したアプリケーションとその活動内容について表彰を受けた．" "http://www.soro-jpf.net/project/assist_list/"
                    , Experience "ソロプチミスト日本財団" "Nov. 17, 2017" "学生ボランティア賞" "サイバーボランティアで開発したアプリケーションとその活動内容について表彰を受けた．" "http://www.soro-jpf.net/project/assist_list/"
                    , Experience "ソロプチミスト日本財団" "Nov. 17, 2017" "学生ボランティア賞" "サイバーボランティアで開発したアプリケーションとその活動内容について表彰を受けた．" "http://www.soro-jpf.net/project/assist_list/"
                    , Experience "ソロプチミスト日本財団" "Nov. 17, 2017" "学生ボランティア賞" "サイバーボランティアで開発したアプリケーションとその活動内容について表彰を受けた．" "http://www.soro-jpf.net/project/assist_list/"
                    ]
            , createExperiencesPage 1 <|
                Experiences
                    [ Experience "ソロプチミスト日本財団" "Nov. 17, 2017" "学生ボランティア賞" "サイバーボランティアで開発したアプリケーションとその活動内容について表彰を受けた．" "http://www.soro-jpf.net/project/assist_list/"
                    , Experience "ソロプチミスト日本財団" "Nov. 17, 2017" "学生ボランティア賞" "サイバーボランティアで開発したアプリケーションとその活動内容について表彰を受けた．" "http://www.soro-jpf.net/project/assist_list/"
                    , Experience "ソロプチミスト日本財団" "Nov. 17, 2017" "学生ボランティア賞" "サイバーボランティアで開発したアプリケーションとその活動内容について表彰を受けた．" "http://www.soro-jpf.net/project/assist_list/"
                    , Experience "ソロプチミスト日本財団" "Nov. 17, 2017" "学生ボランティア賞" "サイバーボランティアで開発したアプリケーションとその活動内容について表彰を受けた．" "http://www.soro-jpf.net/project/assist_list/"
                    , Experience "ソロプチミスト日本財団" "Nov. 17, 2017" "学生ボランティア賞" "サイバーボランティアで開発したアプリケーションとその活動内容について表彰を受けた．" "http://www.soro-jpf.net/project/assist_list/"
                    ]
            , createArchivesPage 0 <|
                Archives
                    [ Archive "熊本地震で漏水・給水情報を伝えたmizuderu.info開発の舞台裏" "http://ascii.jp/elem/000/001/252/1252559/"
                    , Archive "熊本地震で漏水・給水情報を伝えたmizuderu.info開発の舞台裏" "http://ascii.jp/elem/000/001/252/1252559/"
                    , Archive "熊本地震で漏水・給水情報を伝えたmizuderu.info開発の舞台裏" "http://ascii.jp/elem/000/001/252/1252559/"
                    , Archive "熊本地震で漏水・給水情報を伝えたmizuderu.info開発の舞台裏" "http://ascii.jp/elem/000/001/252/1252559/"
                    , Archive "熊本地震で漏水・給水情報を伝えたmizuderu.info開発の舞台裏" "http://ascii.jp/elem/000/001/252/1252559/"
                    , Archive "熊本地震で漏水・給水情報を伝えたmizuderu.info開発の舞台裏" "http://ascii.jp/elem/000/001/252/1252559/"
                    , Archive "熊本地震で漏水・給水情報を伝えたmizuderu.info開発の舞台裏" "http://ascii.jp/elem/000/001/252/1252559/"
                    ]
                    [ Archive "熊本地震で漏水・給水情報を伝えたmizuderu.info開発の舞台裏" "http://ascii.jp/elem/000/001/252/1252559/"
                    , Archive "熊本地震で漏水・給水情報を伝えたmizuderu.info開発の舞台裏" "http://ascii.jp/elem/000/001/252/1252559/"
                    , Archive "熊本地震で漏水・給水情報を伝えたmizuderu.info開発の舞台裏" "http://ascii.jp/elem/000/001/252/1252559/"
                    , Archive "熊本地震で漏水・給水情報を伝えたmizuderu.info開発の舞台裏" "http://ascii.jp/elem/000/001/252/1252559/"
                    , Archive "熊本地震で漏水・給水情報を伝えたmizuderu.info開発の舞台裏" "http://ascii.jp/elem/000/001/252/1252559/"
                    , Archive "熊本地震で漏水・給水情報を伝えたmizuderu.info開発の舞台裏" "http://ascii.jp/elem/000/001/252/1252559/"
                    , Archive "熊本地震で漏水・給水情報を伝えたmizuderu.info開発の舞台裏" "http://ascii.jp/elem/000/001/252/1252559/"
                    ]
            , createArchivesPage 1 <|
                Archives
                    [ Archive "熊本地震で漏水・給水情報を伝えたmizuderu.info開発の舞台裏" "http://ascii.jp/elem/000/001/252/1252559/"
                    , Archive "熊本地震で漏水・給水情報を伝えたmizuderu.info開発の舞台裏" "http://ascii.jp/elem/000/001/252/1252559/"
                    , Archive "熊本地震で漏水・給水情報を伝えたmizuderu.info開発の舞台裏" "http://ascii.jp/elem/000/001/252/1252559/"
                    , Archive "熊本地震で漏水・給水情報を伝えたmizuderu.info開発の舞台裏" "http://ascii.jp/elem/000/001/252/1252559/"
                    , Archive "熊本地震で漏水・給水情報を伝えたmizuderu.info開発の舞台裏" "http://ascii.jp/elem/000/001/252/1252559/"
                    , Archive "熊本地震で漏水・給水情報を伝えたmizuderu.info開発の舞台裏" "http://ascii.jp/elem/000/001/252/1252559/"
                    , Archive "熊本地震で漏水・給水情報を伝えたmizuderu.info開発の舞台裏" "http://ascii.jp/elem/000/001/252/1252559/"
                    ]
                    [ Archive "熊本地震で漏水・給水情報を伝えたmizuderu.info開発の舞台裏" "http://ascii.jp/elem/000/001/252/1252559/"
                    , Archive "熊本地震で漏水・給水情報を伝えたmizuderu.info開発の舞台裏" "http://ascii.jp/elem/000/001/252/1252559/"
                    , Archive "熊本地震で漏水・給水情報を伝えたmizuderu.info開発の舞台裏" "http://ascii.jp/elem/000/001/252/1252559/"
                    , Archive "熊本地震で漏水・給水情報を伝えたmizuderu.info開発の舞台裏" "http://ascii.jp/elem/000/001/252/1252559/"
                    , Archive "熊本地震で漏水・給水情報を伝えたmizuderu.info開発の舞台裏" "http://ascii.jp/elem/000/001/252/1252559/"
                    , Archive "熊本地震で漏水・給水情報を伝えたmizuderu.info開発の舞台裏" "http://ascii.jp/elem/000/001/252/1252559/"
                    , Archive "熊本地震で漏水・給水情報を伝えたmizuderu.info開発の舞台裏" "http://ascii.jp/elem/000/001/252/1252559/"
                    ]
            , creditPage
            ]
        , footerView
        ]


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( model, Cmd.none )


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none


main : Program Never Model Msg
main =
    program
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }
