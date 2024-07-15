class CreateStamps < ActiveRecord::Migration[7.0]
  def change
    create_table :stamps do |t|
      t.integer :number,         null: false
      t.string :name,            null: false
      t.integer :height,         null: false
      t.integer :width,          null: false
      t.integer :desgin_id,      null: false
      t.integer :stamp_color_id, null: false
      t.string :stamp_number,    null: false
      t.integer :paper_color_id, null: false
      t.string :paper_name,      null: false
      t.string :paper_weight,    null: false
      t.integer :temperature,    null: false
      t.integer :push_time,      null: false
      t.integer :set_time_id,    null: false
      t.text :remark,            null: false
    

      t.timestamps
    end
  end
end
