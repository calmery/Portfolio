module Pages.ArticlePage exposing (articlePages)

import Html exposing (Html)
import Parts.ArticlePage exposing (Article, Articles, createArticlePage)


secondaryMenu : List String
secondaryMenu =
    [ "QIITA", "HATENA BLOG" ]


articlePages : List (Html msg)
articlePages =
    [ createArticlePage secondaryMenu 0 <|
        Articles "QIITA" "https://qiita.com/calmery" 2 <|
            [ Article "Hyperappを読む" "読んだのでまとめる．Hyperappとは 2018 年は Hyperapp の年だ を読むとわかる．読んでみる 読みやすさのために少し書き換えている．h 関数 h 関数は与えられた引数から Hyperapp の仮想 DOM…" "Dec. 31, 2017" "https://qiita.com/calmery/items/e5015bf2dcefedccddd5"
            , Article "ElmとElectronでデスクトップアプリを作ってみた" "これは Elm Advent Calendar 2017 の 15 日目の記事です．はじめに Elm と Electron を使って Twitter のハッシュタグである #elm をストリーミングする…" "Dec. 15, 2017" "https://qiita.com/calmery/items/b80ee5a9c3aa0b268d02"
            ]
    , createArticlePage secondaryMenu 1 <|
        Articles "HATENA BLOG" "http://calmery.hatenablog.com" 34 <|
            [ Article "LINEの40万インターンに参加してきた" "LINE Summer Internship 2017 のエンジニア就業コース，通称 40 万インターンに参加してきた．詳しくは LINE株式会社 | インターンシップ 2017 エンジニア就…" "Sep. 3, 2017" "http://calmery.hatenablog.com/entry/2017/09/03/190002"
            , Article "ピクシブの春インターンに参加してきた" "ピクシブ株式会社で行われた pixiv SPRING BOOT CAMP 2018 に参加してきた．pixiv SPRING BOOT CAMP 2018 とは 圧倒的猛者になれる．この pixiv SP…" "Mar. 7, 2018" "http://calmery.hatenablog.com/entry/2018/03/07/123812"
            ]
    ]
