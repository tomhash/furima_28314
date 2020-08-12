# テーブル設計

## users テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| nickname | string | null: false |
| email    | string | null: false |
| password | string | null: false |

### Association

- has_many :item
- has_one  :profile
- has_one  :credit_card

## items テーブル

| Column          | Type    | Options     |
| --------------- | ------- | ----------- |
| item_url        | string  | null: false |
| description     | string  | null: false |
| category        | string  | null: false |
| item_condition  | string  | null: false |
| preparation_day | string  | null: false |
| price           | integer | null: false |

### Association

- belong_to :users

## profiles テーブル

| Column           | Type    | Options     |
| ---------------- | ------- | ----------- |
| family_name      | string  | null: false |
| first_name       | string  | null: false |
| family_name_kana | string  | null: false |
| first_name_kana  | string  | null: false |
| birth_year       | integer | null: false |
| birth_month      | integer | null: false |

### Association

- belong_to :users

## credit_card テーブル

| Column           | Type    | Options     |
| ---------------- | ------- | ----------- |
| card_number      | integer | null: false |
| expiration_year  | integer | null: false |
| expiration_month | integer | null: false |
| security_code    | integer | null: false |

### Association

- belong_to :users

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

- belong_to :users

