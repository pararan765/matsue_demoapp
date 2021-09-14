# README

# 1.概要
　　https://matsue-demoapp.herokuapp.com/
  uaername : admin
  password : 1217
  こちらのサイトでは松江市の魅力を伝えるための観光案内サイトとなっております。
  松江市を食・歴史・自然・温泉の観点から観光名所を案内しております。
  また、目的や宿泊日数に応じたプランニングも行っております。

# 2.機能
- ユーザー管理機能
- 松江市の観光情報（食・温泉・自然・歴史）
- 旅行目的に合わせたプランニング（条件分岐設定）

# 3.ペルソナの設定
- 松江市に一度も行ったことがない人
- 旅行好きでゆっくりしたい場所を探している20代〜30代のカップル
- 日常に疲れを感じており何にも考えずにゆっくり癒されたいと考えている20代〜30代の男女

# 4.作成期間
　2021/８/３０　作成開始
　２０２１/９/8 作成完了及びデプロイ完了

# 5.今後実装したい内容
- レスポンシブデザインの導入
- 条件分岐の細分化
- マイページにカスタム機能を実装

# 6.テーブル設計

## users テーブル
| Column             | Type     | Options                   |
| ------------------ | -------- | ------------------------- |
| nickname           | string   | null: false               |
| encrypted_password | string   | null: false               |
| email              | string   | null: false, unique: true |

### Association

- has_many :questions

## questions テーブル
| Column          | Type       | Options                        |
| --------------- | ---------- | ------------------------------ |
| number_id       | integer    | null: false                    |
| stay_id         | integer    | null: false                    |
| season_id       | integer    | null: false                    |
| purpose_id      | integer    | null: false                    |
| user            | references | null: false, foreign_key: true |


### Association 

- belongs_to :user
