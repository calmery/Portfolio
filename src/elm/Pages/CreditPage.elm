module Pages.CreditPage exposing (creditPages)

import Html exposing (Html)
import Parts.CreditPage exposing (creditPage)


secondaryMenu : List String
secondaryMenu =
    [ "THX" ]


creditLeft : List ( String, String )
creditLeft =
    [ ( "iOS 8 Status Bars Sketch Resource by Aubrey Johnson", "https://www.sketchappsources.com/free-source/1112-ios8-status-bar-sketch-freebie-resource.html" )
    , ( "Stairs icon by AIGA", "https://www.iconfinder.com/icons/134178/stairs_icon" )
    , ( "Arrow, b, down icon by Ionicons", "https://www.iconfinder.com/icons/211614/arrow_b_down_icon" )
    , ( "スマートフォントUIフリーフォント無料ダウンロード-日本語ウェブフォント", "https://www.flopdesign.com/freefont/smartfont.html" )
    , ( "The Definitive Type Lover's Collection - Design Cuts Font Bundle Design Cuts", "https://www.designcuts.com/product/definitive-type-lovers-font-bundle/" )
    ]


creditRight : List ( String, String )
creditRight =
    [
    ]


creditPages : List (Html msg)
creditPages =
    [ creditPage secondaryMenu 0 creditLeft creditRight ]
