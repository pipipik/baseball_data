# テーブル設計

## users テーブル

| Column   | Type    | Options     |
| -------- | ------- | ----------- |
| email    | string  | null: false |
| password | string  | null: false |
| name     | string  | null: false |
| number   | integer | null: false |
| position | string  | null: false |

### Association

- has_many :records

## records テーブル

| Column       | Type       | Options     |
| ------------ | ---------- | ----------- |
| date         | date       | null: false |
| direction_id | integer    | null: false |
| result_id    | integer    | null: false |
| user         | references | null: false |

### Association

- belongs_to :user
