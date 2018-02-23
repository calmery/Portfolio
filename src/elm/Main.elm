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
      ( [ div [ class "secondary-label" ]
          [ text "CONTENTS" ]
      , div [ class "secondary-border" ]
          [ div []
              []
          ]
      ] ++ ( List.indexedMap (\index element ->
        div [ id <| "category-" ++ category ++ "-" ++ (toString index), class ( "secondary-menu menu" ++ if index == i then " active" else "" ) ]
          [ div [ class "circle" ]
              []
          , div [ class "name" ]
              [ text element ]
          ] ) elements ) )




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
      , createSecondaryMenu "top" ["TOP"] 0
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
      , createSecondaryMenu "aboutme" ["PROFILE"] 0
      ]



articlePage0 : Html Msg
articlePage0 =
  article [ class "page", id "pages-articles-0", class "pages-articles" ]
      [ div [ class "main" ]
          [ div [ class "pages-articles-container" ]
              [ div [ class "pages-articles-title" ]
                  [ text "QIITA" ]
              , div [ class "pages-articles-description" ]
                  [ text "THERE ARE 2 ARTICLES ON HATENA BLOG" ]
              , div [ class "pages-articles-articles" ]
                  [ div [ class "article" ]
                      [ div [ class "title" ]
                          [ span [ class "p" ]
                              [ text "Hyperapp" ]
                          , text "を読む"
                          ]
                      , div [ class "body" ]
                          [ text "読んだのでまとめる．"
                          , span [ class "p" ]
                              [ text "Hyperapp" ]
                          , text "とは "
                          , span [ class "p" ]
                              [ text "2018" ]
                          , text "年は "
                          , span [ class "p" ]
                              [ text "Hyperapp" ]
                          , text "の年だ を読むとわかる．読んでみる 読みやすさのために少し書き換えている．"
                          , span [ class "p" ]
                              [ text "h" ]
                          , text "関数 "
                          , span [ class "p" ]
                              [ text "h" ]
                          , text "関数は与えられた引数から "
                          , span [ class "p" ]
                              [ text "Hyperapp" ]
                          , text "の仮想 "
                          , span [ class "p" ]
                              [ text "DOM" ]
                          , text "…"
                          ]
                      , div [ class "date" ]
                          [ text "Dec. 31, 2017" ]
                      , div [ class "continue" ]
                          [ text "続きを読む" ]
                      ]
                  , div [ class "article" ]
                      [ div [ class "title" ]
                          [ span [ class "p" ]
                              [ text "Hyperapp" ]
                          , text "を読む"
                          ]
                      , div [ class "body" ]
                          [ text "読んだのでまとめる．"
                          , span [ class "p" ]
                              [ text "Hyperapp" ]
                          , text "とは "
                          , span [ class "p" ]
                              [ text "2018" ]
                          , text "年は "
                          , span [ class "p" ]
                              [ text "Hyperapp" ]
                          , text "の年だ を読むとわかる．読んでみる 読みやすさのために少し書き換えている．"
                          , span [ class "p" ]
                              [ text "h" ]
                          , text "関数 "
                          , span [ class "p" ]
                              [ text "h" ]
                          , text "関数は与えられた引数から "
                          , span [ class "p" ]
                              [ text "Hyperapp" ]
                          , text "の仮想 "
                          , span [ class "p" ]
                              [ text "DOM" ]
                          , text "…"
                          ]
                      , div [ class "date" ]
                          [ text "Dec. 31, 2017" ]
                      , div [ class "continue" ]
                          [ text "続きを読む" ]
                      ]
                  , div [ class "article" ]
                      [ div [ class "more" ]
                          [ img [ src "resources/img/href.svg" ]
                              []
                          , div [ class "text" ]
                              [ text "READ MORE" ]
                          ]
                      ]
                  ]
              ]
          ]
          , createSecondaryMenu "articles" ["QIITA", "HATENA BLOG"] 0
          ]


articlePage1 : Html Msg
articlePage1 =
  article [ class "page", id "pages-articles-1", class "pages-articles" ]
      [ div [ class "main" ]
          [ div [ class "pages-articles-container" ]
              [ div [ class "pages-articles-title" ]
                  [ text "QIITA" ]
              , div [ class "pages-articles-description" ]
                  [ text "THERE ARE 2 ARTICLES ON HATENA BLOG" ]
              , div [ class "pages-articles-articles" ]
                  [ div [ class "article" ]
                      [ div [ class "title" ]
                          [ span [ class "p" ]
                              [ text "Hyperapp" ]
                          , text "を読む"
                          ]
                      , div [ class "body" ]
                          [ text "読んだのでまとめる．"
                          , span [ class "p" ]
                              [ text "Hyperapp" ]
                          , text "とは "
                          , span [ class "p" ]
                              [ text "2018" ]
                          , text "年は "
                          , span [ class "p" ]
                              [ text "Hyperapp" ]
                          , text "の年だ を読むとわかる．読んでみる 読みやすさのために少し書き換えている．"
                          , span [ class "p" ]
                              [ text "h" ]
                          , text "関数 "
                          , span [ class "p" ]
                              [ text "h" ]
                          , text "関数は与えられた引数から "
                          , span [ class "p" ]
                              [ text "Hyperapp" ]
                          , text "の仮想 "
                          , span [ class "p" ]
                              [ text "DOM" ]
                          , text "…"
                          ]
                      , div [ class "date" ]
                          [ text "Dec. 31, 2017" ]
                      , div [ class "continue" ]
                          [ text "続きを読む" ]
                      ]
                  , div [ class "article" ]
                      [ div [ class "title" ]
                          [ span [ class "p" ]
                              [ text "Hyperapp" ]
                          , text "を読む"
                          ]
                      , div [ class "body" ]
                          [ text "読んだのでまとめる．"
                          , span [ class "p" ]
                              [ text "Hyperapp" ]
                          , text "とは "
                          , span [ class "p" ]
                              [ text "2018" ]
                          , text "年は "
                          , span [ class "p" ]
                              [ text "Hyperapp" ]
                          , text "の年だ を読むとわかる．読んでみる 読みやすさのために少し書き換えている．"
                          , span [ class "p" ]
                              [ text "h" ]
                          , text "関数 "
                          , span [ class "p" ]
                              [ text "h" ]
                          , text "関数は与えられた引数から "
                          , span [ class "p" ]
                              [ text "Hyperapp" ]
                          , text "の仮想 "
                          , span [ class "p" ]
                              [ text "DOM" ]
                          , text "…"
                          ]
                      , div [ class "date" ]
                          [ text "Dec. 31, 2017" ]
                      , div [ class "continue" ]
                          [ text "続きを読む" ]
                      ]
                  , div [ class "article" ]
                      [ div [ class "more" ]
                          [ img [ src "resources/img/href.svg" ]
                              []
                          , div [ class "text" ]
                              [ text "READ MORE" ]
                          ]
                      ]
                  ]
              ]
          ]
          , createSecondaryMenu "articles" ["QIITA", "HATENA BLOG"] 1
      ]





createProductPage : Int -> String -> Int -> String -> String -> Html Msg
createProductPage i name date description repository =
  article [ class "page", id <| "pages-products-" ++ (toString i), class "pages-products" ]
      [ div [ class "main" ]
          [ div [ class "information" ]
              [ div [ class "name" ]
                  [ text name ]
              , div [ class "date" ]
                  [ text <| toString date ]
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
              [ text description
              ]
          , div [ class "repository" ]
              [ div []
                  [ text repository ]
              , div [ class "url" ]
                  [ text <| "https://github.com/" ++ repository ]
              ]
          ]
          , createSecondaryMenu "products" ["PATHFINDER", "PORCH", "CALMERY.ME", "PAWOPY", "MORIMORIN", "FLOWERTALK", "SPOTLIGHT", "MIZUDERU", "OCTOCATCHER", "KNOKIMOCHI"] i
      ]




experiencePage0 : Html Msg
experiencePage0 =
  article [ class "page", id "pages-experiences-0", class "pages-experiences" ]
      [ div [ class "main" ]
          [ div [ class "pages-experiences-line" ]
              []
          , div [ class "pages-experiences-line-bottom" ]
              []
          , div [ class "pages-experiences-contents" ]
              [ div [ class "content" ]
                  [ div [ class "left" ]
                      [ div []
                          [ text "ソロプチミスト日本財団" ]
                      , div [ class "date" ]
                          [ text "Nov. 17, 2017" ]
                      ]
                  , div [ class "middle" ]
                      [ div [ class "circle" ]
                          [ div [ class "inner-circle" ]
                              []
                          ]
                      ]
                  , div [ class "right" ]
                      [ div []
                          [ text "学生ボランティア賞" ]
                      , div [ class "description" ]
                          [ text "サイバーボランティアで開発したアプリケーションとその活動内容について表彰を受けた．" ]
                      , div [ class "url" ]
                          [ text "http://www.soro-jpf.net/project/assist_list/" ]
                      ]
                  ]
              , div [ class "content" ]
                  [ div [ class "left" ]
                      [ div []
                          [ text "ソロプチミスト日本財団" ]
                      , div [ class "date" ]
                          [ text "Nov. 17, 2017" ]
                      ]
                  , div [ class "middle" ]
                      [ div [ class "circle" ]
                          [ div [ class "inner-circle" ]
                              []
                          ]
                      ]
                  , div [ class "right" ]
                      [ div []
                          [ text "学生ボランティア賞" ]
                      , div [ class "description" ]
                          [ text "サイバーボランティアで開発したアプリケーションとその活動内容について表彰を受けた．" ]
                      , div [ class "url" ]
                          [ text "http://www.soro-jpf.net/project/assist_list/" ]
                      ]
                  ]
              , div [ class "content" ]
                  [ div [ class "left" ]
                      [ div []
                          [ text "ソロプチミスト日本財団" ]
                      , div [ class "date" ]
                          [ text "Nov. 17, 2017" ]
                      ]
                  , div [ class "middle" ]
                      [ div [ class "circle" ]
                          [ div [ class "inner-circle" ]
                              []
                          ]
                      ]
                  , div [ class "right" ]
                      [ div []
                          [ text "学生ボランティア賞" ]
                      , div [ class "description" ]
                          [ text "サイバーボランティアで開発したアプリケーションとその活動内容について表彰を受けた．" ]
                      , div [ class "url" ]
                          [ text "http://www.soro-jpf.net/project/assist_list/" ]
                      ]
                  ]
              , div [ class "content" ]
                  [ div [ class "left" ]
                      [ div []
                          [ text "ソロプチミスト日本財団" ]
                      , div [ class "date" ]
                          [ text "Nov. 17, 2017" ]
                      ]
                  , div [ class "middle" ]
                      [ div [ class "circle" ]
                          [ div [ class "inner-circle" ]
                              []
                          ]
                      ]
                  , div [ class "right" ]
                      [ div []
                          [ text "学生ボランティア賞" ]
                      , div [ class "description" ]
                          [ text "サイバーボランティアで開発したアプリケーションとその活動内容について表彰を受けた．" ]
                      , div [ class "url" ]
                          [ text "http://www.soro-jpf.net/project/assist_list/" ]
                      ]
                  ]
              , div [ class "content" ]
                  [ div [ class "left" ]
                      [ div []
                          [ text "ソロプチミスト日本財団" ]
                      , div [ class "date" ]
                          [ text "Nov. 17, 2017" ]
                      ]
                  , div [ class "middle" ]
                      [ div [ class "circle" ]
                          [ div [ class "inner-circle" ]
                              []
                          ]
                      ]
                  , div [ class "right" ]
                      [ div []
                          [ text "学生ボランティア賞" ]
                      , div [ class "description" ]
                          [ text "サイバーボランティアで開発したアプリケーションとその活動内容について表彰を受けた．" ]
                      , div [ class "url" ]
                          [ text "http://www.soro-jpf.net/project/assist_list/" ]
                      ]
                  ]
              ]
          ]
          , createSecondaryMenu "experiences" ["0", "1"] 0
      ]

experiencePage1 : Html Msg
experiencePage1 =
  article [ class "page", id "pages-experiences-1", class "pages-experiences" ]
      [ div [ class "main" ]
          [ div [ class "pages-experiences-line" ]
              []
          , div [ class "pages-experiences-line-bottom" ]
              []
          , div [ class "pages-experiences-contents" ]
              [ div [ class "content" ]
                  [ div [ class "left" ]
                      [ div []
                          [ text "ソロプチミスト日本財団" ]
                      , div [ class "date" ]
                          [ text "Nov. 17, 2017" ]
                      ]
                  , div [ class "middle" ]
                      [ div [ class "circle" ]
                          [ div [ class "inner-circle" ]
                              []
                          ]
                      ]
                  , div [ class "right" ]
                      [ div []
                          [ text "学生ボランティア賞" ]
                      , div [ class "description" ]
                          [ text "サイバーボランティアで開発したアプリケーションとその活動内容について表彰を受けた．" ]
                      , div [ class "url" ]
                          [ text "http://www.soro-jpf.net/project/assist_list/" ]
                      ]
                  ]
              , div [ class "content" ]
                  [ div [ class "left" ]
                      [ div []
                          [ text "ソロプチミスト日本財団" ]
                      , div [ class "date" ]
                          [ text "Nov. 17, 2017" ]
                      ]
                  , div [ class "middle" ]
                      [ div [ class "circle" ]
                          [ div [ class "inner-circle" ]
                              []
                          ]
                      ]
                  , div [ class "right" ]
                      [ div []
                          [ text "学生ボランティア賞" ]
                      , div [ class "description" ]
                          [ text "サイバーボランティアで開発したアプリケーションとその活動内容について表彰を受けた．" ]
                      , div [ class "url" ]
                          [ text "http://www.soro-jpf.net/project/assist_list/" ]
                      ]
                  ]
              , div [ class "content" ]
                  [ div [ class "left" ]
                      [ div []
                          [ text "ソロプチミスト日本財団" ]
                      , div [ class "date" ]
                          [ text "Nov. 17, 2017" ]
                      ]
                  , div [ class "middle" ]
                      [ div [ class "circle" ]
                          [ div [ class "inner-circle" ]
                              []
                          ]
                      ]
                  , div [ class "right" ]
                      [ div []
                          [ text "学生ボランティア賞" ]
                      , div [ class "description" ]
                          [ text "サイバーボランティアで開発したアプリケーションとその活動内容について表彰を受けた．" ]
                      , div [ class "url" ]
                          [ text "http://www.soro-jpf.net/project/assist_list/" ]
                      ]
                  ]
              , div [ class "content" ]
                  [ div [ class "left" ]
                      [ div []
                          [ text "ソロプチミスト日本財団" ]
                      , div [ class "date" ]
                          [ text "Nov. 17, 2017" ]
                      ]
                  , div [ class "middle" ]
                      [ div [ class "circle" ]
                          [ div [ class "inner-circle" ]
                              []
                          ]
                      ]
                  , div [ class "right" ]
                      [ div []
                          [ text "学生ボランティア賞" ]
                      , div [ class "description" ]
                          [ text "サイバーボランティアで開発したアプリケーションとその活動内容について表彰を受けた．" ]
                      , div [ class "url" ]
                          [ text "http://www.soro-jpf.net/project/assist_list/" ]
                      ]
                  ]
              , div [ class "content" ]
                  [ div [ class "left" ]
                      [ div []
                          [ text "ソロプチミスト日本財団" ]
                      , div [ class "date" ]
                          [ text "Nov. 17, 2017" ]
                      ]
                  , div [ class "middle" ]
                      [ div [ class "circle" ]
                          [ div [ class "inner-circle" ]
                              []
                          ]
                      ]
                  , div [ class "right" ]
                      [ div []
                          [ text "学生ボランティア賞" ]
                      , div [ class "description" ]
                          [ text "サイバーボランティアで開発したアプリケーションとその活動内容について表彰を受けた．" ]
                      , div [ class "url" ]
                          [ text "http://www.soro-jpf.net/project/assist_list/" ]
                      ]
                  ]
              ]
          ]
          , createSecondaryMenu "experiences" ["0", "1"] 1
      ]

archivePage0 : Html Msg
archivePage0 =
  article [ class "page", id "pages-archives-0", class "pages-archives" ]
      [ div [ class "main" ]
          [ div [ class "pages-archives-title" ]
              [ text "ARCHIVES" ]
          , div [ class "pages-archives-container" ]
              [ div [ class "left" ]
                  [ div [ class "content" ]
                      [ div []
                          [ text "熊本地震で漏水・給水情報を伝えた"
                          , span [ class "p" ]
                              [ text "mizuderu.info" ]
                          , text "開発の舞台裏"
                          ]
                      , div [ class "url" ]
                          [ text "http://ascii.jp/elem/000/001/252/1252559/" ]
                      ]
                  ]
              , div [ class "right" ]
                  [ div [ class "content" ]
                      [ div []
                          [ text "熊本地震で漏水・給水情報を伝えた"
                          , span [ class "p" ]
                              [ text "mizuderu.info" ]
                          , text "開発の舞台裏"
                          ]
                      , div [ class "url" ]
                          [ text "http://ascii.jp/elem/000/001/252/1252559/" ]
                      ]
                  , div [ class "content" ]
                      [ div []
                          [ text "熊本地震で漏水・給水情報を伝えた"
                          , span [ class "p" ]
                              [ text "mizuderu.info" ]
                          , text "開発の舞台裏"
                          ]
                      , div [ class "url" ]
                          [ text "http://ascii.jp/elem/000/001/252/1252559/" ]
                      ]
                  ]
              ]
          ]
          , createSecondaryMenu "archive" ["0"] 0
      ]


creditPage0 : Html Msg
creditPage0 =
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
          , createSecondaryMenu "credit" ["0"] 0
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
            , articlePage0
            , articlePage1
            , createProductPage 0 "PATHFINDER" 2018 "Elm を使用して開発しました" "calmery/Portfolio"
            , createProductPage 1 "PORCH" 2018 "WebRTC を使用したチャット" "calmery/Porch"
            , createProductPage 2 "CALMERY.ME" 2017 "Web サイト" "calmery/calmery.me"
            , createProductPage 3 "PAWOPY" 2017 "Python から Pawoo の API を使用するためのライブラリ" "calmery/pawopy"
            , createProductPage 4 "MORIMORIN" 2016 "動的に現在位置の 3D マップを生成する" "calmery/Morimorin"
            , createProductPage 5 "FLOWERTALK" 2016 "JPHACKS 2016 Award Day. お花とお話しする" "calmery/FlowerTalk"
            , createProductPage 6 "SPOTLIGHT" 2016 "Twitter で検索を行う" "calmery/LegacySpotlight"
            , createProductPage 7 "MIZUDERU" 2016 "水が出るか出ないか，投稿によるマッピング" "calmery/Mizuderu"
            , createProductPage 8 "OCTOCATCHER" 2016 "オクトキャットをランダムで取得する" "calmery/Octocatcher"
            , createProductPage 9 "KNOKIMOCHI" 2016 "木の遠隔で監視する" "NoOp"
            , experiencePage0
            , experiencePage1
            , archivePage0
            , creditPage0
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
