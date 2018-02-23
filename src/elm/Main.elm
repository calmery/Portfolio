module Main exposing (..)

import Html exposing (Html, program, section)
import Html.Attributes exposing (id)
import Port exposing (ready)
import Parts.TopPage exposing (topPage)
import Parts.AboutPage exposing (aboutPage)
import Parts.ArticlePage exposing (Article, Articles, createArticlePage)
import Parts.ProductPage exposing (Product, createProductPage)
import Parts.ExperiencePage exposing (Experiences, Experience, createExperiencesPage)
import Parts.ArchivePage exposing (Archives, Archive, createArchivesPage)
import Parts.CreditPage exposing (creditPage)
import Parts.Header exposing (header)
import Parts.Nav exposing (nav)
import Parts.Footer exposing (footer)


type alias Model =
    String


view : Model -> Html msg
view model =
    section [ id "main" ]
        [ header
        , nav
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
        , footer
        ]


main : Program Never Model msg
main =
    program
        { init = "" ! [ ready () ]
        , view = view
        , update = (\msg model -> model ! [])
        , subscriptions = always Sub.none
        }
