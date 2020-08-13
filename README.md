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
| birth_year       | integer | null: false |
| birth_month      | integer | null: false |

### Association

- has_many :items
- has_many :buyers
- has_one  :destination
- 

## items テーブル

| Column          | Type    | Options     |
| --------------- | ------- | ----------- |
| item_url        | string  | null: false |
| item_name       | string  | null: false |
| description     | string  | null: false |
| category        | string  | null: false |
| item_condition  | string  | null: false |
| ship_from       | string  | null: false |
| shipping_type   | string  | null: false |
| preparation_day | string  | null: false |
| price           | integer | null: false |

### Association

- belong_to :user
- has_one :buyer

## buyers テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| user_id | references | null: false ,foreign_key: true |
| item_id | references | null: false ,foreign_key: true |

- belong_to :user
- belong_to :user
- has_one :destination


## destinations テーブル

| Column           | Type    | Options     |
| ---------------- | ------- | ----------- |
| family_name      | string  | null: false |
| first_name       | string  | null: false |
| family_name_kana | string  | null: false |
| first_name_kana  | string  | null: false |
| postal_code      | integer | null: false |
| prefecture       | string  | null: false |
| city             | string  | null: false |
| address          | string  | null: false |
| building         | string  | ----------- |
| phone_number     | integer | null: false |

### Association

- belong_to :user
- belong_to :buyer

