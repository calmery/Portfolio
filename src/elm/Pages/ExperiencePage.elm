module Pages.ExperiencePage exposing (experiencePages)

import Html exposing (Html)
import Parts.ExperiencePage exposing (Experiences, Experience, createExperiencesPage)


experiencePages : List (Html msg)
experiencePages =
    [ createExperiencesPage 0 <|
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
    ]
