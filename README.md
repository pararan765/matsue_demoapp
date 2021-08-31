# README

# 1.テーマ
- 「松江に行っていみたい！」の松江市の観光案内アプリ

# 2.機能
- 松江市の観光情報（食・温泉・自然・歴史）
- 旅行目的に合わせたプランニング

# 3.ペルソナの設定
- 松江市に一度も行ったことがない人
- 旅行好きでゆっくりしたい場所を探している20代〜30代のカップル
- 日常に疲れを感じており何にも考えずにゆっくり癒されたいと考えている20代〜30代の男女

# 4.テーブル設計

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
| days_id         | integer    | null: false                    |
| season_id       | integer    | null: false                    |
| purpose_id      | integer    | null: false                    |
| user            | references | null: false, foreign_key: true |


### Association 

- belongs_to :user