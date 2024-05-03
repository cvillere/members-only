class ChangeUserIdFromStringToIntegerInPosts < ActiveRecord::Migration[7.1]
  def change
    change_column :posts, :user_id, :integer
  end

end
