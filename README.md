# テニシィ
# 概要
- テニスの練習相手をマッチングするアプリケーション
- 名前の由来
  - 某マッチングサイトの名前から。テニス版マッチングサイトのイメージを持ちやすいように。

# 仕様
- 募集を行うには会員登録が必要
  - なるべく多くの方に利用してもらいたいために会員登録は簡易的なもの（自分が過去に利用していたサイトでは電話番号を一度しか登録出来ず変更が出来なくてその後利用できなくなった経緯があるため）
- 募集するには、タイトル、説明文、都道府県、場所、募集人数、開始時間、参加費を入力する
- 都道府県はセレクトボックスにて選択（これで地域別ページ）
  - それ以降の場所についてはユーザー入力
- ユーザー登録を行なっていればコメントを投稿できる
  - コメントはそのコメントをした人とそのコメントの親の募集記事の投稿主だけが消せる（編集はできず、新規投稿と削除のみ）
- 地域別ページ
  - 文字から探すのではなく、感覚的に探せるように日本地図からリンク先を選択する
  - リンク先には各都道府県での新着一覧を表示
- 過去閲覧ページ
  - 過去に自分がコメントを投稿した一覧を表示
  - コメントを削除してその記事に自分の投稿したコメントがなくなった場合は表示されなくなる
  - ログインしていない場合は、トップページにリダイレクトし、ログインしてくださいとフラッシュメッセージを出す
- バリデーションなどにより正常に投稿できなかった場合、入力値は残す
- あいまい検索機能。募集説明文から任意の文字で、あいまい検索が出来る。ブランクで検索した際は全て表示される
# 実装済み機能
- ユーザー登録とログイン、ログアウト
- 募集文の新規投稿、編集、削除
- 募集文に対して、コメントの投稿と削除
- 任意のテキストにて、あいまい検索機能
- 地域別一覧ページ（日本地図で感覚的に探せるようにしております）
- 過去閲覧（過去に自分がコメントした募集文の一覧表示ページ）
# 今後実装したい機能
- 募集に対して、参加するボタンなどで自動で人数を制限してくれる機能
- ユーザー同士が個別にやり取りを行える機能
- 投稿した募集文にコメントが来た時に通知される機能
- 全国のテニスコートの一覧を取得し、それをセレクトボックスでも選べるような機能
- お気に入り機能
- いいね機能
- ページネーション
# DEMO
##### （ビューは全て仮となっております、まずは機能の実装を優先しているため）
トップページから新規投稿、トップページから募集詳細ページ
[![Image from Gyazo](https://i.gyazo.com/4b09a8eac8e26c313f13b3d3df731c85.gif)](https://gyazo.com/4b09a8eac8e26c313f13b3d3df731c85)

募集詳細ページからコメントを投稿、その後に削除
[![Image from Gyazo](https://i.gyazo.com/0d5b32ae2a9a79f4ffdbe943e4fb4412.gif)](https://gyazo.com/0d5b32ae2a9a79f4ffdbe943e4fb4412)

トップページから地域別一覧ページへ（動画では青森、北海道、岩手の募集があり、その中の北海道を表示）
[![Image from Gyazo](https://i.gyazo.com/ef487d92fc27a3eebb4ee9200dcd1715.gif)](https://gyazo.com/ef487d92fc27a3eebb4ee9200dcd1715)

トップページから募集詳細ページ、その後に過去閲覧ページへ  
（トップページには3件募集が投稿されておりますが、2件にしかコメントしていないため最後のページでは2件しか表示されておりません。）
[![Image from Gyazo](https://i.gyazo.com/34456f312063640182b87a922be09a21.gif)](https://gyazo.com/34456f312063640182b87a922be09a21)
  
トップページからヘッダーの検索を実行、その後に詳細ページにて検索ワードが入っているかの確認
[![Image from Gyazo](https://i.gyazo.com/07381a783627d56d7014dca769860774.gif)](https://gyazo.com/07381a783627d56d7014dca769860774)
# DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false,unique:true|
|password|string|nill :false|

### Association
- has_many :posts
- has_many :commentes

## postsテーブル
|Column|Type|Options|
|------|----|-------|
|title|text|null: false|
|main|text|null: false|
|Prefecture|string|null: false|
|place|text|null: false|
|person|integer|null: false|
|starttime|datetime|null: false|
|money|integer|null: false|
|user_id|integer|null: false|

### Association
- belongs_to :user
- has_many comments

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|bigint|null: false|
|post_id|bigint|null: false|
|text|text|null: false|
### Association
- belongs_to :user
- belongs_to :post
