class RemoveDesginIdFromStamps < ActiveRecord::Migration[7.0]
  def change
    remove_column :stamps, :desgin_id, :string
  end
end
