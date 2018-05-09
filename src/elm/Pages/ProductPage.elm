module Pages.ProductPage exposing (productPages)

import Html exposing (Html)
import Parts.ProductPage exposing (Product, createProductPage)


secondaryMenu : List String
secondaryMenu =
    [ "PORTFOLIO", "PORCH", "CALMERY.ME", "PAWOPY", "MORIMORIN", "FLOWERTALK", "SANDPIT", "SPOTLIGHT", "MIZUDERU", "OCTOCATCHER", "KINOKIMOCHI", "GOOCH", "REAL TIME CHAT" ]


productPages : List (Html msg)
productPages =
    [ createProductPage secondaryMenu 0 <| Product "PORTFOLIO" "2018" "今までの活動をまとめました" "calmery/Portfolio" "https://github.com/calmery/Portfolio" (Just "portfolio.png") Nothing
    , createProductPage secondaryMenu 1 <| Product "PORCH" "2018" "WebRTC を使用したチャットを行うことができる" "calmery/Porch" "https://github.com/calmery/Porch" (Just "porch.png") (Just "porch-sp.png")
    , createProductPage secondaryMenu 2 <| Product "CALMERY.ME" "2017" "リンクをまとめました" "calmery/Calmery.me" "https://github.com/calmery/Calmery.me" (Just "calmeryme.png") Nothing
    , createProductPage secondaryMenu 3 <| Product "PAWOPY" "2017" "A Python wrapper for the Mastodon API like tweepy" "calmery/Pawopy" "https://github.com/calmery/Pawopy" Nothing Nothing
    , createProductPage secondaryMenu 4 <| Product "MORIMORIN" "2016" "現在地から周辺の地形を生成した 3D マップ上に，作業者の位置を確認することができる" "MORIMORIN – 森HACK" "http://mori-hack.com/portfolio/morimorin/" (Just "morimorin.png") Nothing
    , createProductPage secondaryMenu 5 <| Product "FLOWERTALK" "2016" "お花とお話しする" "Flower Talk | Devpost" "https://devpost.com/software/ks_1604-w9cp28" Nothing Nothing
    , createProductPage secondaryMenu 6 <| Product "SANDPIT" "2016" "デジタル砂場．砂の高さによって色が変わる" "@calmeryme - Twitter" "https://twitter.com/calmeryme/status/778541946067230720" Nothing Nothing
    , createProductPage secondaryMenu 7 <| Product "SPOTLIGHT" "2016" "Twitter 上の有害情報を検索し共有する" "calmery/LegacySpotlight" "https://github.com/calmery/LegacySpotlight" (Just "spotlight.png") Nothing
    , createProductPage secondaryMenu 8 <| Product "MIZUDERU" "2016" "熊本地震の漏水，給水情報をマッピングする" "calmery/Mizuderu" "https://github.com/calmery/Mizuderu" (Just "mizuderu.png") Nothing
    , createProductPage secondaryMenu 9 <| Product "OCTOCATCHER" "2016" "Octodex からオクトキャットの画像を取得する" "calmery/Octocatcher" "https://github.com/calmery/Octocatcher" (Just "octocatcher.png") Nothing
    , createProductPage secondaryMenu 10 <| Product "KINOKIMOCHI" "2016" "木の状態を可視化することで，継続的な木への関心を促す" "キノキモチ – 森HACK" "http://mori-hack.com/portfolio/vol1_kinokimochi/" Nothing Nothing
    , createProductPage secondaryMenu 11 <| Product "GOOCH" "2015" "要望や不満を，身の回りの潜在的なニーズとして可視化する" "Gooch | Devpost" "https://devpost.com/software/km_05" (Just "gooch.png") Nothing
    , createProductPage secondaryMenu 12 <| Product "REAL TIME CHAT" "2014" "WebSocket を使用して，LINE を再現してみた" "" "" Nothing (Just "line-sp.png")
    ]
