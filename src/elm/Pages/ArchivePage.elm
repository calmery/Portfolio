module Pages.ArchivePage exposing (archivePages)

import Html exposing (Html)
import Parts.ArchivePage exposing (Archives, Archive, createArchivesPage)


secondaryMenu : List String
secondaryMenu =
    [ "PAGE 1", "PAGE 2" ]


archivePages : List (Html msg)
archivePages =
    [ createArchivesPage secondaryMenu 0 <|
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
    , createArchivesPage secondaryMenu 1 <|
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
    ]
