module Pages.ExperiencePage exposing (experiencePages)

import Html exposing (Html)
import Parts.ExperiencePage exposing (Experiences, Experience, createExperiencesPage)


secondaryMenu : List String
secondaryMenu =
    [ "PAGE 1", "PAGE 2", "PAGE 3" ]


experiencePages : List (Html msg)
experiencePages =
    [ createExperiencesPage secondaryMenu 0 <|
        Experiences
            [ Experience "ピクシブ株式会社" "From Feb. 26, 2018 through Mar. 02, 2018" "pixiv SPRING BOOT CAMP 2018" "ピクシブ株式会社で行われた 5 日間のインターンシップに参加した．" "https://recruit.pixiv.net/intern/tech/"
            , Experience "ピクシブ株式会社" "Feb. 07, 2018" "アルバイト" "pixiv 福岡オフィスにアルバイト入社した．" "https://pixiv.co.jp"
            , Experience "ソロプチミスト日本財団" "Nov. 17, 2017" "学生ボランティア賞" "サイバーボランティアで開発したアプリケーションとその活動内容について表彰を受けた．" "http://www.soro-jpf.net/project/assist_list/"
            , Experience "クックパッド株式会社" "From Sep. 11 through Sep. 15, 2017" "5day サービス開発インターンシップ" "クックパッド株式会社で行われた 5 日間のハッカソン型インターンシップに参加した．" "https://internship.cookpad.com/2017/summer/5day-service-development/"
            , Experience "レバレジーズ株式会社" "From Sep. 8 through Sep. 10, 2017" "湯けむりハッカソン" "レバレジーズ株式会社で行われた 3 日間のハッカソン型インターンシップに参加した．" ""
            ]
    , createExperiencesPage secondaryMenu 1 <|
        Experiences
            [ Experience "LINE株式会社" "From Aug. 7 through Sep. 1, 2017" "インターンシップ 2017 エンジニア就業コース" "LINE株式会社で行われた 1 ヶ月間の就業型インターンシップに参加した．" "http://line-hr.jp/archives/cat_1255838.html"
            , Experience "合同会社プラスワンズ" "Jun. 19, 2017" "アルバイト" "合同会社プラスワンズをアルバイト退社した．" "http://plusones.jp/"
            , Experience "PyCon" "Apr. 23, 2017" "PyCon mini Kumamoto" "運営側で参加した．" "http://kumamoto.pycon.jp/"
            , Experience "国際ソロプチミスト熊本" "Apr. 16, 2017" "学生ボランティア賞" "サイバーボランティアで開発したアプリケーションとその活動内容について表彰を受けた．" "http://www.si-kumamoto.org/"
            , Experience "株式会社ナレッジコミュニケーション" "Nov. 24, 2016" "アルバイト" "株式会社ナレッジコミュニケーション熊本オフィスにアルバイト入社した．" "http://www.knowledgecommunication.jp/"
            ]
    , createExperiencesPage secondaryMenu 2 <|
        Experiences
            [ Experience "JPHACKS" "Nov. 19, 2016" "JPHACKS 2016 Award Day" "JPHACKS 2016 の Award Day に進出した．" "https://2016.jphacks.com/hackdays/final"
            , Experience "JAWS-US" "Oct. 22, 2016" "JAWS FESTA 2016" "Mizuderu に関係するコミュニティセッションパネルのセッションに登壇した．" "https://jft2016.jaws-ug.jp/timetable/mizuderu/"
            , Experience "JAWS-UG" "Sep. 18, 2016" "「JAWS-UG秋の大分熊本勉強会ツアー」熊本会場(JAWS-UG熊本第7回クラウド勉強会)" "mizuderu.info の振り返りに登壇した．" "https://jaws-ug-kumamoto.doorkeeper.jp/events/48360"
            , Experience "合同会社プラスワンズ" "Aug. 19, 2016" "アルバイト" "合同会社プラスワンズにアルバイト入社した．" "http://plusones.jp/"
            , Experience "森HACK" "Mar. 15, 2016" "森HACK – 林業応援ハッカソン" "熊本県人吉市で開催された林業応援ハッカソンで最優秀賞を受賞した．" "http://mori-hack.com/portfolio/vol1_kinokimochi/"
            ]
    ]
