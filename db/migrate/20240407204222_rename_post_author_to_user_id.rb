class RenamePostAuthorToUserId < ActiveRecord::Migration[7.1]
  def change
    rename_column :posts, :author, :user_id
  end
end
