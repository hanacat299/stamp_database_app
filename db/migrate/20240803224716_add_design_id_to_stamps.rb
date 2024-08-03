class AddDesignIdToStamps < ActiveRecord::Migration[7.0]
  def change
    add_column :stamps, :design_id, :integer
  end
end
