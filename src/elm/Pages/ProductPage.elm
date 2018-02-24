module Pages.ProductPage exposing (productPages)

import Html exposing (Html)
import Parts.ProductPage exposing (Product, createProductPage)


secondaryMenu : List String
secondaryMenu =
    [ "PATHFINDER", "PORCH", "CALMERY.ME", "PAWOPY", "MORIMORIN", "FLOWERTALK", "SPOTLIGHT", "MIZUDERU", "OCTOCATCHER", "KNOKIMOCHI" ]


productPages : List (Html msg)
productPages =
    [ createProductPage secondaryMenu 0 <| Product "PATHFINDER" "2018" "Elm を使用して開発しました" "calmery/Portfolio" "https://github.com/calmery/Portfolio" (Just "pathfinder.png") Nothing
    , createProductPage secondaryMenu 1 <| Product "PORCH" "2018" "WebRTC を使用したチャット" "calmery/Porch" "https://github.com/calmery/Porch" (Just "porch.png") (Just "porch-sp.png")
    , createProductPage secondaryMenu 2 <| Product "CALMERY.ME" "2017" "Web サイト" "calmery/calmery.me" "https://github.com/calmery/calmery.me" (Just "calmeryme.png") Nothing
    , createProductPage secondaryMenu 3 <| Product "PAWOPY" "2017" "A Python wrapper for the Mastodon API like tweepy" "calmery/Pawopy" "https://github.com/calmery/Pawopy" Nothing Nothing
    , createProductPage secondaryMenu 4 <| Product "MORIMORIN" "2016" "動的に現在位置の 3D マップを生成する" "calmery/Morimorin" "https://github.com/calmery/Morimorin" (Just "morimorin.png") Nothing
    , createProductPage secondaryMenu 5 <| Product "FLOWERTALK" "2016" "JPHACKS 2016 Award Day. お花とお話しする https://www.youtube.com/watch?v=K0sstHIWzqU" "calmery/KS_1604" "https://github.com/calmery/KS_1604" Nothing Nothing
    , createProductPage secondaryMenu 6 <| Product "SPOTLIGHT" "2016" "Twitter で検索を行う" "calmery/LegacySpotlight" "https://github.com/calmery/LegacySpotlight" (Just "spotlight.png") Nothing
    , createProductPage secondaryMenu 7 <| Product "MIZUDERU" "2016" "水が出るか出ないか，投稿によるマッピング" "calmery/Mizuderu" "https://github.com/calmery/Mizuderu" (Just "mizuderu.png") Nothing
    , createProductPage secondaryMenu 8 <| Product "OCTOCATCHER" "2016" "オクトキャットをランダムで取得する" "calmery/Octocatcher" "https://github.com/calmery/Octocatcher" (Just "octocatcher.png") Nothing
    , createProductPage secondaryMenu 9 <| Product "KNOKIMOCHI" "2016" "木の遠隔で監視する" "" "" Nothing Nothing
    ]
