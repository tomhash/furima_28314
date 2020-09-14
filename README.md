# テーブル設計

## users テーブル

| Column           | Type    | Options     |
| ---------------- | ------- | ----------- |
| nickname         | string  | null: false |
| email            | string  | null: false |
| password         | string  | null: false |
| family_name      | string  | null: false |
| first_name       | string  | null: false |
| family_name_kana | string  | null: false |
| first_name_kana  | string  | null: false |
| birthday         | date    | null: false |


### Association

- has_many :items
- has_many :buyers


## items テーブル

| Column          | Type       | Options                        |
| --------------- | ---------- | ------------------------------ |
| item_url        | string     | null: false                    |
| name            | string     | null: false                    |
| description     | string     | null: false                    |
| category        | integer    | null: false                    |
| item_condition  | integer    | null: false                    |
| ship_from       | integer    | null: false                    |
| shipping_type   | integer    | null: false                    |
| preparation_day | integer    | null: false                    |
| price           | integer    | null: false                    |
| user            | references | null: false ,foreign_key: true |
### Association

- belongs_to :user
- has_one :buyer

## buyers テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| user    | references | null: false ,foreign_key: true |
| item    | references | null: false ,foreign_key: true |

- belongs_to :user
- belongs_to :item
- has_one :destination


## destinations テーブル

| Column           | Type       | Options                        |
| ---------------- | -------    | ------------------------------ |
| postal_code      | integer    | null: false                    |
| ship_from        | integer     | null: false                   |
| city             | string     | null: false                    |
| address          | string     | null: false                    |
| building         | string     | ------------------------------ |
| phone_number     | string     | null: false                    |
| buyer            | references | null: false ,foreign_key: true |
### Association


- belongs_to :buyer

