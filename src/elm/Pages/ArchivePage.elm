module Pages.ArchivePage exposing (archivePages)

import Html exposing (Html)
import Parts.ArchivePage exposing (Archives, Archive, createArchivesPage)


secondaryMenu : List String
secondaryMenu =
    [ "MIZUDERU", "JPHACKS", "SPOTLIGHT" ]


archivePages : List (Html msg)
archivePages =
    [ createArchivesPage secondaryMenu 0 <|
        Archives
            [ Archive "熊本地震で漏水・給水情報を伝えたmizuderu.info開発の舞台裏" "http://ascii.jp/elem/000/001/252/1252559/"
            , Archive "ライター重森が体験したJAWS Festa 東海道 2016熱狂の1日" "http://ascii.jp/elem/000/001/255/1255328/"
            , Archive "【新聞：熊日】被災地でのＳＮＳの威力" "http://www.sojo-u.ac.jp/news/media/160726_007142.html"
            , Archive "(レポート)[JAWS Festa 2016] 熊本地震で作成した水がでるでないを登録するWebサービス「mizuderu」の被災地での開発ヒストリー #jawsug #jawsfesta" "https://dev.classmethod.jp/cloud/aws/jawsfesta-2016-community/"
            , Archive "コミュニティセッション・パネル 〜\x3000熊本地震で作成した水がでるでないを登録するWebサービス「mizuderu」の被災地での開発ヒストリー\x3000〜" "http://www.soro-jpf.net/project/ceremony.html"
            , Archive "【新聞：教育学術】地震発生！その時、大学は..." "http://www.sojo-u.ac.jp/news/media/170131_007721.html"
            , Archive "熊本地震で学生が作成したサービス「mizuderu」を振り返る。JAWS FESTA東海道 2016参加レポート" "https://this.kiji.is/115267052923536893"
            ]
            [ Archive "Vol.75 【平成28年7月発行】崇城大学は元気です！熊本地震からの復旧記録" "http://www.sojo-u.ac.jp/news/magazine/160715_007170.html"
            , Archive "学生と教員らが被災地で役立つアプリを制作" "http://www.sojo-u.ac.jp/faculty/department/information/news/160421_006862.html"
            , Archive "【新聞：熊日】被災地でのＳＮＳの威力" "http://www.sojo-u.ac.jp/news/media/160726_007142.html"
            ]
    , createArchivesPage secondaryMenu 1 <|
        Archives
            [ Archive "日本最大級の学生向けハックイベント「JPHACKS 2016」決勝進出" "http://www.sojo-u.ac.jp/faculty/department/information/news/170113_007668.html"
            , Archive "JPHACKS 2016 追加オンライン審査で選ばれた決勝進出チーム9組を発表" "https://jphacks.com/information/2016-hackday-finalists/"
            ]
            []
    , createArchivesPage secondaryMenu 2 <|
        Archives
            [ Archive "ソロプチミスト日本財団「学生ボランティア賞」受賞" "http://www.sojo-u.ac.jp/faculty/department/information/news/171220_008473.html"
            , Archive "ソロプチミスト日本財団 平成29年 年次贈呈式" "http://www.soro-jpf.net/project/ceremony.html"
            , Archive "【新聞：熊日】ツイッターアプリを菊川さんが開発" "https://www.sojo-u.ac.jp/news/media/161017_007433.html"
            , Archive "合同サイバーパトロール＠崇城大が学生の開発アプリで行われました" "https://www.sojo-u.ac.jp/faculty/department/information/news/161011_007400.html"
            , Archive "サイバー防犯ボランティア 団体員証交付式" "https://www.sojo-u.ac.jp/news/topics/160830_007267.html"
            , Archive "熊本県警と連携 \"サイバーパトロール検索プログラム\"を情報学科の学生が開発" "https://www.sojo-u.ac.jp/news/topics/160614_006983.html"
            , Archive "熊本地震「デマ情報」学生が監視" "https://this.kiji.is/115267052923536893"
            ]
            [ Archive "【新聞：熊日】「デマ情報」学生が監視 九州5大学連携" "https://www.sojo-u.ac.jp/news/media/160614_006991.html"
            ]
    ]
