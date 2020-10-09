class DropUsersReferenceFromPost < ActiveRecord::Migration[6.0]
  def change
    remove_column :posts, :users_id
  end
end
