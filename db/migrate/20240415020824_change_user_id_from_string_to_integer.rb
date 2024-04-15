class ChangeUserIdFromStringToInteger < ActiveRecord::Migration[7.1]
  def change
    change_column :Users, :user_id, :integer
  end
end

