class AddPushPressureToStamps < ActiveRecord::Migration[7.0]
  def change
    add_column :stamps, :push_pressure, :integer
  end
end
