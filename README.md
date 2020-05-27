# 制作途中
- 現時点での実装済み
  - ユーザー登録、新規投稿、投稿編集、投稿削除、コメント投稿、コメント削除
  
# 概要
テニスの練習相手をマッチングするアプリケーション

# 仕様
- 募集を行うには会員登録が必要
  - なるべく多くの方に利用してもらいたいために会員登録は簡易的なもの（自分が過去に利用していたサイトでは電話番号を一度しか登録出来ず変更が出来なくてその後利用できなくなった経緯があるため）
- 募集するには、タイトル、説明文、都道府県、場所、募集人数、開始時間、参加費を入力する
- 都道府県はセレクトボックスにて選択（これで地域別ページ）
  - それ以降の場所についてはユーザー入力
  - （テニスコート情報を取得しておいてセレクトも行ってもいいかもしれない）
- 地域別ページ
  - 文字から探すのではなく、感覚的に探せるように日本地図からリンク先を選択する
  - リンク先には各都道府県での新着一覧を表示
- バリデーションなどにより正常に投稿できなかった場合、入力値は残す
- ユーザー登録を行なっていればコメントを投稿できる
  - コメントはそのコメントをした人とそのコメントの親の募集記事の投稿主だけが消せる（編集はできず、新規投稿と削除のみ）
# DEMO
##### （ビューは全て仮となっております、まずは機能の実装を優先しているため）

トップページから募集詳細ページへ（2回目の詳細はコメント確認のため）
[![Image from Gyazo](https://i.gyazo.com/6614d0cd205a3f8525055aee04d9a81e.gif)](https://gyazo.com/6614d0cd205a3f8525055aee04d9a81e)

トップページから新規投稿→トップページ→地域別一覧ページ→地域別新着一覧ページ
[![Image from Gyazo](https://i.gyazo.com/547106a10fad127477e26f4031cd5917.gif)](https://gyazo.com/547106a10fad127477e26f4031cd5917)


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
