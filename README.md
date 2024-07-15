## stamps テーブル

| Column           | Type       | Options                   　   |
| ---------------- | ---------- | ------------------------------ |
| number           | integer    | null: false                    |
| name             | string     | null: false                    |
| height           | integer    | null: false                    |
| width            | integer    | null: false                    |
| design_id        | integer    | null: false                    |
| stamp_color_id   | integer    | null: false                    |
| stamp_number     | string     | null: false                    |
| paper_color_id   | integer    | null: false                    |
| paper_name       | string     | null: false                    |
| paper_weight     | string     | null: false                    |
| temperature      | integer    | null: false                    |
| push_time        | integer    | null: false                    |
| push_pressure    | integer    | null: false                    |
| set_time_id      | integer    | null: false                    |
| remark           | text       |                                |



### Association

- has_many :histories


## historiesテーブル

| stamp      | references | null: false, foreign_key: true |
| content    | text       | null: false                    |


- belongs_to :stamp