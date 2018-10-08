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
        Articles "HATENA BLOG" "http://calmery.hatenablog.com" 37 <|
            [ Article "メルカリのインターンシップに行ってきた" "夏休み中の 1 ヶ月間，メルカリの Summer Internship 2018 に行ってきた．メルカリがどのような会社で，どのような働き方をしているのか知ることが…" "Oct. 6, 2018" "http://calmery.hatenablog.com/entry/2018/10/06/121419"
            , Article "Mint を試してみた" "見かけたので試してみた．メモ．Mint とは 再利用可能なコンポーネント スタイリング ルーティング グローバル，ローカルの状態のハンドリング 失敗する可能性…" "Aug. 5, 2018" "http://calmery.hatenablog.com/entry/2018/08/05/032432"
            ]
    ]
