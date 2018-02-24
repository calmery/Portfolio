module Pages.ProductPage exposing (productPages)

import Html exposing (Html)
import Parts.ProductPage exposing (Product, createProductPage)


secondaryMenu : List String
secondaryMenu =
    [ "PATHFINDER", "PORCH", "CALMERY.ME", "PAWOPY", "MORIMORIN", "FLOWERTALK", "SPOTLIGHT", "MIZUDERU", "OCTOCATCHER", "KNOKIMOCHI" ]


productPages : List (Html msg)
productPages =
    [ createProductPage secondaryMenu 0 <| Product "PATHFINDER" "2018" "Elm を使用して開発しました" "calmery/Portfolio" "https://github.com/calmery/Portfolio"
    , createProductPage secondaryMenu 1 <| Product "PORCH" "2018" "WebRTC を使用したチャット" "calmery/Porch" "https://github.com/calmery/Porch"
    , createProductPage secondaryMenu 2 <| Product "CALMERY.ME" "2017" "Web サイト" "calmery/calmery.me" "https://github.com/calmery/calmery.me"
    , createProductPage secondaryMenu 3 <| Product "PAWOPY" "2017" "Python から Pawoo の API を使用するためのライブラリ" "calmery/pawopy" "https://github.com/calmery/pawopy"
    , createProductPage secondaryMenu 4 <| Product "MORIMORIN" "2016" "動的に現在位置の 3D マップを生成する" "calmery/Morimorin" "https://github.com/calmery/Morimorin"
    , createProductPage secondaryMenu 5 <| Product "FLOWERTALK" "2016" "JPHACKS 2016 Award Day. お花とお話しする" "calmery/FlowerTalk" "https://github.com/calmery/FlowerTalk"
    , createProductPage secondaryMenu 6 <| Product "SPOTLIGHT" "2016" "Twitter で検索を行う" "calmery/LegacySpotlight" "https://github.com/calmery/LegacySpotlight"
    , createProductPage secondaryMenu 7 <| Product "MIZUDERU" "2016" "水が出るか出ないか，投稿によるマッピング" "calmery/Mizuderu" "https://github.com/calmery/Mizuderu"
    , createProductPage secondaryMenu 8 <| Product "OCTOCATCHER" "2016" "オクトキャットをランダムで取得する" "calmery/Octocatcher" "https://github.com/calmery/Octocatcher"
    , createProductPage secondaryMenu 9 <| Product "KNOKIMOCHI" "2016" "木の遠隔で監視する" "" ""
    ]
